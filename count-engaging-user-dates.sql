/*

USER DATES OPERATIONS

*/

-- CONVERT THE DATE FORMAT TO A MORE MANAGEABLE FORMAT

UPDATE en_users
SET Date_Created = STR_TO_DATE(Date_Created, '%d/%m/%Y');

UPDATE en_users
SET Date_Modified = STR_TO_DATE(Date_Modified, '%d/%m/%Y');

-- COUNT USERS BETWEEN 2 DATES

SELECT COUNT(*) FROM en_users
WHERE Date_Created BETWEEN '2014-03-22' AND '2014-12-31';

SELECT COUNT(*) FROM en_users
WHERE Date_Modified BETWEEN '2018-05-19' AND '2018-05-19';