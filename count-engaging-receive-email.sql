/*

USERS THAT RECEIVE AND DON'T RECEIVE EMAIL

*/

-- UPDATE WHERE REAL EMAIL OK IS NULL

UPDATE en_users
SET real_email_ok = 'Y'
WHERE real_email_ok IS NULL;

-- OPT-OUTS

SELECT COUNT(*) AS "Total emails that don't receive messages" FROM en_users
WHERE Suppressed = 'Y' OR real_email_ok = 'N';

-- OPT-INS

SELECT COUNT(*) AS "Total emails that receive messages" FROM en_users
WHERE Suppressed = 'N' AND real_email_ok = 'Y';

