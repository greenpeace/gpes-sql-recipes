/*

EXISTANCE OF ID NUMBER

*/

-- COUNT RECORDS WITHOUT ID NUMBER

SELECT COUNT(*) AS 'Records witout id number' FROM en_users WHERE id_number = '';

-- COUNT RECORDS WITH VALID ID NUMBER

SELECT COUNT(id_number) AS 'Phone numbers with id number format'
FROM en_users
WHERE id_number REGEXP '^[A-z]?[0123456789]{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$';

-- COUNT RECORDS WITH INVALID (wrong format) OR EMPTY ID NUMBER

SELECT COUNT(id_number) AS 'Phone numbers with id number format'
FROM en_users
WHERE id_number REGEXP '^[A-z]?[0123456789]{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$';

-- SHOW RECORDS WITH INVALID (wrong format) ID NUMBER

SELECT *
FROM en_users
WHERE NOT id_number REGEXP '^[A-z]?[0123456789]{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$' AND id_number <> '';
