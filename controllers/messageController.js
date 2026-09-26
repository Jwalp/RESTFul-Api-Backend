const pool = require('../config/db');

async function sendMessage(req, res) {
   try {
        const {sender_user_id, reciever_user_id, message} = req.body;
        
        if (!sender_user_id || !reciever_user_id || !message) {
            return res.status(400).json({
                error_code: 101,
                error_title: "Parameter Error",
                error_message: "Missing Parameters"
            });
        }
        
        if (message.length > 256) {
            return res.status(400).json({
                error_code: 104,
                error_title: "Message Error",
                error_message: "Message too long"
            });
        }

        const [result] = await pool.query(
            'CALL SendMessage(?, ?, ?)',
            [sender_user_id, reciever_user_id, message]
        );

        const returnValue = result[0][0].result;
        if (returnValue == -1){
            return res.status(402).json({ 
                error_code: 105,
                error_title: "Invalid ID", 
                error_message: 'Unknown sender or reciever ID' 
            });
        } else if (returnValue != 0) {
            return res.status(402).json({ 
                error_code: 106,
                error_title: "Message Failure", 
                error_message: 'Message sending failed' 
            });
        }

        res.status(201).json({ 
            success_code: 200, 
            success_title: "Message Sent", 
            success_message: 'Message was sent successfully' 
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

async function viewMessages(req, res) {
    try {
        const {user_id_a, user_id_b} = req.body;
        
        if (!user_id_a || !user_id_b) {
        return res.status(400).json({
            error_code: 101,
            error_title: "Parameter Error",
            error_message: "Missing Parameters"
        });
        }

        const [result] = await pool.query(
            'CALL ViewMessages(?, ?)',
            [user_id_a, user_id_b]
        );

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
    sendMessage,
    viewMessages
};