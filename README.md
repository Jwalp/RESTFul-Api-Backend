# RESTFUL-Api

Name: Jonathan Walpow

Time to Complete: 4-5 Hours (Including needing to reinstall SQL)

Steps to Start and Finish:
    1: Plan Environment <br />
        -Create MySQL Tables  <br />
        -Create starting javascript backend enviroment (Basic server.js + installed packages + .gitignore)  <br />
        -Connect database to backend enviroment (.env, db.js, pool into server.js)  <br />
        -Create required endpoint list, check basic connection with endpoints (server.js)  <br />
        -Move endpoint functionality to respective controller files (accountController.js, messageController.js)  <br />
    2: Work on endpoints one at a time
        -Create register user endpoint + structure for other endpoints to follow  <br />
        -Create stored procedure for register  <br />
        -Validate with Bruno  <br />
        -Add edge cases when needed  <br />
        -Repeat with other endpoints, copy and improve structure when needed  <br />
    3: Final Improvements
        -Review data transfer in endpoints  <br />
        -Find other edge cases when needed  <br />
        -Add comments + readMe for code clarity  <br />

Issues with Endpoint Structure:
-No constraints listed -> had to design based on experience
-Login functionality with rest of the endpoints
-Sending to yourself does work for this current structure, I left this in since messaging apps also have this feature
-Requires userID for sending and recieving, rather than email
-Security issues with seeing messages, anyone can see and utilize the more "admin" functions like ListAllUsers

Suggestions:
-Connect login to sending and viewing messages reguarding a specific user (Will also require logout endpoint)
-Add Patch/Set Endpoints ex. ChangePassword, ChangeName
-Add roles to add additional privacy + resitrictions to viewing messages and listing all users
-Use emails to send messages (If in a real application, we can grab the userID via email using the SQL table)
-Add group chats message feature (This would require a third SQL table with columns groupID, user1, user2... userN)
-Change responses to be easier to read (ex. Show joined first/last name instead of userId for SendMessage sender_id)
