/*

COUNT OPTINS AND OPTOUTS

*/

-- UPDATE WHERE REAL EMAIL OK IS NULL

UPDATE en_users
SET real_email_ok = 'Y'
WHERE real_email_ok IS NULL;

-- INFO

SELECT 'All opt-outs report' AS '';

-- FACET ORDER BY COUNT

SELECT real_email_ok AS 'Opt in status', COUNT(real_email_ok) AS 'Total emails'
FROM en_users
GROUP BY real_email_ok;

-- INFO

SELECT 'Opt-outs report by donor status' AS '';

SELECT real_email_ok AS 'Opt in status', tipo AS 'Donnor status', COUNT(real_email_ok) AS 'Total emails'
FROM en_users
GROUP BY real_email_ok, tipo;

