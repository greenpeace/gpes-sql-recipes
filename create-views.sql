/*

USEFUL VIEWS

*/

-- VIEW WITH DONORS

CREATE VIEW donnors AS
SELECT *
FROM `en_users`
WHERE tipo IN (0,2,3,4,5);


-- VIEW WITH HASHED DATA

CREATE VIEW hashed_contact_data AS
SELECT first_name, last_name, SHA2( email, 256) AS hashed_email , SHA2( phone_number, 256) AS hashed_phone_number
FROM `en_users`;

