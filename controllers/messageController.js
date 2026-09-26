const pool = require('../config/db');

async function sendMessage(req, res) {
   res.json({ status: 'ok' });
}

async function viewMessages(req, res) {
    res.json({ status: 'ok' });
}


module.exports = {
    sendMessage,
    viewMessages
};