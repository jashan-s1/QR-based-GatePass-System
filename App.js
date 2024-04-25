const express = require('express');
const http = require('http');
const WebSocket = require('ws');
const mysql = require('mysql');
const { v4: uuidv4 } = require("uuid");
const QRCode = require('qrcode');


const app = express();
const server = http.createServer(app);
const wss = new WebSocket.Server({ server });

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root@123',
    database: 'gps',
});

db.connect((err) => {
    if (err) {
        console.error('Database connection failed: ' + err.stack);
        return;
    }
    console.log('Connected to database');
});

app.use(express.static('Main_Interface'));

app.get('/', (req, res) => {
    const userType = req.query.userType;

    console.log('Received request with userType:', userType);

    if (userType === 'student') {
        res.sendFile(__dirname + '/Main_Interface/Student_Interface.html');
    } else if (userType === 'warden') {
        res.sendFile(__dirname + '/Main_Interface/Warden_Interface.html');
    } else {
        console.log('Invalid userType:', userType);
        res.status(400).send('Invalid user type');
    }
});

function generateRequestId() {
    return uuidv4();
}

wss.on('connection', (ws, req) => {
    console.log('A user connected via WebSocket');

    const userType = new URLSearchParams(req.url.split('?')[1]).get('userType');

    ws.protocol = userType + '-socket';

    ws.on('message', (message) => {
        const data = JSON.parse(message);

        if (data.type === 'submitGatepass') {
            const { name, uid, branch, date, place, timeOut, timeIn, gatepassType } = data.data;

            const requestId = generateRequestId();
            const insertQuery = `INSERT INTO gatepass_requests (id, name, uid, branch, date, place, time_out, time_in, gatepass_type, status)
                     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'Pending')`;

            db.query(insertQuery, [requestId, name, uid, branch, date, place, timeOut, timeIn, gatepassType], (err, result) => {
                if (err) {
                    console.error('Error inserting into database:', err);
                    ws.send(JSON.stringify({ type: 'error', message: 'Failed to submit gatepass request' }));
                    return;
                }

                console.log('Gatepass request inserted into the database');

                const newGatepassRequest = {
                    id: requestId, // Corrected: use 'id' instead of undefined variable
                    name,
                    uid,
                    branch,
                    date,
                    place,
                    timeOut,
                    timeIn,
                    gatepassType,
                    status: 'Pending',
                };

                wss.clients.forEach((client) => {
                    if (client.readyState === WebSocket.OPEN && client.protocol === 'warden-socket') {
                        client.send(JSON.stringify({ type: 'newGatepassRequest', data: newGatepassRequest }));
                    }
                });

                ws.send(JSON.stringify({ type: 'success', message: 'Gatepass request submitted successfully' }));
            });
        } else if (data.type === 'approve' || data.type === 'reject') {
            const requestId = data.requestId;
            const requestData = data.requestData;

            const status = data.type === 'approve' ? 'Approved' : 'Rejected';
            const updateQuery = `UPDATE gatepass_requests SET status = ? WHERE id = ?`;

            db.query(updateQuery, [status, requestId], (err, result) => {
                if (err) {
                    console.error('Error updating database:', err);
                    ws.send(JSON.stringify({ type: 'error', message: 'Failed to update gatepass request' }));
                    return;
                }

                console.log(`Gatepass request ${status.toLowerCase()} in the database`);

                wss.clients.forEach((client) => {
                    if (client.readyState === WebSocket.OPEN && client.protocol === 'student-socket') {
                        client.send(JSON.stringify({ type: data.type, requestData: requestData }));
                    }
                });

               

                ws.send(JSON.stringify({ type: 'success', message: `Gatepass request ${status.toLowerCase()} successfully` }));
            });

        }
        else if (data.type === 'gatepassReceiptDisplayed') {
            const requestId = data.requestId;

            const deleteQuery = `DELETE FROM gatepass_requests WHERE id = ?`;
            db.query(deleteQuery, [requestId], (deleteErr, deleteResult) => {
                if (deleteErr) {
                    console.error('Error deleting request:', deleteErr);
                    return;
                }
                console.log('Request deleted successfully');
            });
        }
    });

    ws.on('close', () => {
        console.log('User disconnected via WebSocket');
    });
});

const PORT = 3300;
server.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});
