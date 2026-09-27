const pool = require('../config/db');
const bcrypt = require('bcrypt');

//Registers a New User to the System
async function register(req, res) {
    try {
        const {email, password, first_name, last_name} = req.body;
        
        //Missing Paramater Error
        if (!email || !password || !first_name || !last_name) {
            return res.status(400).json({
                error_code: 101,
                error_title: "Parameter Error",
                error_message: "Missing Parameters"
            });
        }

        //Encrypt the Password using bcrypt store the hash instead of the password
        const passwordHash = await bcrypt.hash(password, 10);

        //Call Stored Procedure; Returns userID AS user_id
        const [result] = await pool.query(
            'CALL CreateAccount(?, ?, ?, ?)',
            [email, passwordHash, first_name, last_name]
        );

        //If User already exists, the stored procedure returns -1
        const userID = result[0][0].user_id;
        if (userID == -1){
            return res.status(402).json({ 
                error_code: 102,
                error_title: "Duplicate Email", 
                error_message: 'Account already exists' 
            });
        }

        //Successful Account Creation
        res.status(201).json({ 
            user_id: userID, 
            email, 
            first_name, 
            last_name
        });

    } catch (err) {
        console.error(err);
        res.status(500).json({ 
            error_code: 500, 
            error_title: "Server Error", 
            error_message: 'An unexpected error occurred' 
        });
    }
}

async function login(req, res) {
    try {
        const {email, password} = req.body;

        //Missing Parameter Error
        if (!email || !password) {
            return res.status(400).json({
                error_code: 101,
                error_title: "Parameter Error",
                error_message: "Missing Parameters"
            });
        }

        //Call Login using stored procedure, returns *
        const [result] = await pool.query(
            'CALL Login(?)',
            [email]
        );

        //User Doesn't Exist
        if (!result[0][0]) {
            return res.status(401).json({ 
                error_code: 104,
                error_title: "Login Failure",
                error_message: 'Invalid credentials' 
            });
        }

        //Unhash and check password
        const passwordHash = result[0][0].password;
        const isPasswordValid = await bcrypt.compare(password, passwordHash);
        if (!isPasswordValid) {
            return res.status(401).json({ 
                error_code: 103,
                error_title: "Login Failure",
                error_message: 'Invalid credentials' 
            });
        }

        //Login Sucessful
        const userID = result[0][0].user_id;
        const first_name = result[0][0].first_name;
        const last_name = result[0][0].last_name;

        res.status(200).json({
            user_id: userID,
            email,
            first_name,
            last_name
        });

    } catch (err) {
        console.error(err);
        res.status(500).json({ 
            error_code: 500, 
            error_title: "Server Error", 
            error_message: 'An unexpected error occurred' 
        });
    }
}

async function listAllUsers(req, res) {
    try {
        const {requested_user_id} = req.body;

        //Missing Parameter Error
        if (!requested_user_id) {
        return res.status(400).json({
            error_code: 101,
            error_title: "Parameter Error",
            error_message: "Missing Parameters"
        });
        }

        //Call Stored Procedure, returns table of all users besides caller
        const [result] = await pool.query(
            'CALL ListAllUsers(?)',
            [requested_user_id]
        );

        //Print Table with success status
        res.status(200).json(result[0]);

    } catch (err) {
        console.error(err);
        res.status(500).json({ 
            error_code: 500, 
            error_title: "Server Error", 
            error_message: 'An unexpected error occurred' 
        });
    }
}

module.exports = {
    register,
    login,
    listAllUsers
};