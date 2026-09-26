const express = require("express");
const app = express();
const PORT = 3000;

app.use(express.json());

app.post('/register', (req, res) => {
    res.json({ status: 'ok' });
});

app.post('/login', (req, res) => {
    res.json({ status: 'ok' });
});

app.get('/view_messages', (req, res) => {
    res.json({ status: 'ok' });
});

app.post('/send_message', (req, res) => {
    res.json({ status: 'ok' });
});

app.get('/list_all_users', (req, res) => {
    res.json({ status: 'ok' });
});

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});