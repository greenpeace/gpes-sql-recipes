/*

EXISTANCE OF ID NUMBER

*/

-- COUNT RECORDS WITHOUT ID NUMBER

SELECT COUNT(*) AS 'Records witout id number' FROM en_users WHERE id_number = '';

-- COUNT RECORDS WITH VALID ID NUMBER

SELECT COUNT(id_number) AS 'ID numbers with correct format'
FROM en_users
WHERE id_number REGEXP '^[A-z]?[0123456789]{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$';

-- COUNT RECORDS WITH INVALID (wrong format) OR EMPTY ID NUMBER

SELECT COUNT(id_number) AS 'Id numbers with wrong format or empty'
FROM en_users
WHERE NOT id_number REGEXP '^[A-z]?[0123456789]{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$';

-- SHOW RECORDS WITH INVALID (wrong format) ID NUMBER

SELECT *
FROM en_users
WHERE NOT id_number REGEXP '^[A-z]?[0123456789]{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$' AND id_number <> '';

-- REPORT MULTIPLE ID NUMBERS

SELECT *
FROM en_users
WHERE id_number IN (
SELECT id_number FROM en_users
GROUP BY id_number
HAVING COUNT(`id_number`) > 1 AND id_number <> '')
ORDER BY id_number;

-- COUNT MULTIPLE ID NUMBERS

SELECT COUNT(*) AS 'Number of email addresses with common ID numbers'
FROM en_users
WHERE id_number IN (
SELECT id_number FROM en_users
GROUP BY id_number
HAVING COUNT(`id_number`) > 1 AND id_number <> '')
ORDER BY id_number;

