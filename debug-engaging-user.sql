/*

DEBUG PROBLEMS WTH ENGAGING USERS DATABASE

*/

-- UPDATE WHERE TIPO IS NULL AND EMPTY

UPDATE en_users
SET tipo = 1
WHERE tipo IS NULL;

UPDATE en_users
SET tipo = 1
WHERE tipo = '';

-- MULTIPLE CONTACT ID AND LEAD ID

SELECT * FROM en_users
WHERE SFDC_Contact_ID <> '' AND SFDC_Lead_ID <> '';

-- EMPTY CONTACT ID FOR A CONTACT

SELECT * FROM en_users
WHERE ( contact_codes <> '' AND contact_codes <> 'Donor Prospect')
AND `SFDC_Contact_ID` = '';

-- EMPTY LEAD ID FOR A QUALIFIED LEAD

SELECT * FROM en_users
WHERE SFDC_lead_id = '' AND
contact_codes = '' AND
first_name <> '' AND
last_name <> '' AND
id_number <> '' AND
phone_number <> '';

-- MISSING CONTACT CODES

SELECT * FROM en_users
WHERE tipo IN (0,2,3,4,5) AND contact_codes = '';

-- MISSING SFDC_contact_id

SELECT * FROM en_users
WHERE tipo IN (0,2,3,4,5) AND SFDC_contact_id = '';
