/*

EXISTANCE OF PHONE NUMBER

*/

-- WITH

SELECT COUNT(*) AS 'Records witout phone number' FROM en_users WHERE phone_number = '';

-- WITHOUT

SELECT COUNT(*) AS 'Records with phone number, not necessarily a valid one' FROM en_users WHERE phone_number <> '';

-- WITH A VALID FORMAT

SELECT COUNT(phone_number) AS 'Phone numbers with valid format'
FROM en_users
WHERE phone_number REGEXP '^[6789][0123456789]{8}';
