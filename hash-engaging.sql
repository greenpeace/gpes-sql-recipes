/*

HASH USER DATA 

*/

-- HASH EMAILS

SELECT SHA2( email, 256) AS 'email' FROM en_users;

-- HASH PHONE NUMBER

SELECT SHA2( phone_number, 256) AS 'phone_number' FROM en_users;
