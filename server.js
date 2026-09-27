const express = require("express");
const app = express();
const PORT = 3000;
//const pool = require('./config/db');
const { register, login, listAllUsers} = require('./controllers/accountController');
const { viewMessages, sendMessage } = require('./controllers/messageController');

app.use(express.json());

//Routes
app.post('/register', register);

app.post('/login', login);

app.get('/view_messages', viewMessages);

app.post('/send_message', sendMessage);

app.get('/list_all_users', listAllUsers);

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});