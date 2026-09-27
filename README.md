# RESTFUL-Api

Name: Jonathan Walpow

Time to Complete: 4-5 Hours (Including needing to reinstall SQL)

Steps to Start and Finish:  <br />
    1: Plan Environment <br />
        -Create MySQL Tables  <br />
        -Create starting javascript backend environment (Basic server.js + installed packages + .gitignore)  <br />
        -Connect database to backend environment (.env, db.js, pool into server.js)  <br />
        -Create required endpoint list, check basic connection with endpoints (server.js)  <br />
        -Move endpoint functionality to respective controller files (accountController.js, messageController.js)  <br /> <br />
    2: Work on endpoints one at a time  <br />
        -Create register user endpoint + structure for other endpoints to follow  <br />
        -Create stored procedure for register  <br />
        -Validate with Bruno  <br />
        -Add edge cases when needed  <br />
        -Repeat with other endpoints, copy and improve structure when needed  <br /> <br />
    3: Final Improvements  <br />
        -Review data transfer in endpoints  <br />
        -Find other edge cases when needed  <br />
        -Add comments + README for code clarity  <br />

Issues with Endpoint Structure: <br />
-No constraints listed -> had to design based on experience <br />
-Login doesn't have functionality tied with the rest of the endpoints <br />
-Sending to yourself does work for this current structure, I left this in since messaging apps also have this feature <br />
-Requires userID for sending and receiving, rather than email <br />
-Security issues with seeing messages, anyone can see and utilize the more "admin" functions like ListAllUsers <br />

Suggestions: <br />
    Security <br />
        -Add roles to add additional privacy + restrictions to viewing messages and listing all users <br />
        -Check if the user is logged in to send messages and view their messages <br />
        -Input Validation <br />
    Usability <br />
        -Use emails to send messages (If in a real application, we can grab the userID via email using the SQL table) <br />
        -Change responses to be easier to read (ex. Show joined first/last name instead of userId for SendMessage sender_id) <br />
        -Return a message instead of empty list for no results found <br />
    API Design <br />
        -Add Patch/Set Endpoints ex. ChangePassword, ChangeName <br />
        -Add group chats message feature (This would require a third SQL table with columns groupID, user1, user2... userN) <br />
        -Delete User Endpoint <br />
