const pool = require('../config/db');
const bcrypt = require('bcrypt');

async function register(req, res) {
    try {
        const { email, password, first_name, last_name } = req.body;
        const passwordHash = await bcrypt.hash(password, 10);

        const [result] = await pool.query(
            'CALL CreateAccount(?, ?, ?, ?)',
            [email, passwordHash, first_name, last_name]
        );

        const userID = result[0][0].userID;

        if (userID == -1){
            return res.status(402).json({ 
                error_code: 102,
                error_title: "Duplicate Email", 
                error_message: 'Account already exists' 
            });
        }

        res.status(201).json({ 
            user_id: userID, 
            email, 
            first_name, 
            last_name
        });

    } catch (err) {
        console.error(err);
        res.status(401).json({ 
            error_code: 101, 
            error_title: "Register Failure", 
            error_message: 'Missing Paramaters' 
        });
    }
}

async function login(req, res) {
    res.json({ status: 'ok' });
}

async function listAllUsers(req, res) {
    res.json({ status: 'ok' });
}

module.exports = {
    register,
    login,
    listAllUsers
};