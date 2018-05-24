/*

CROSS ENGAGING NETWORKS USERS WITH ANOTHER TABLE

*/


-- CROSS OPT-OUT INFORMATION
-- UPDATE en_users.real_email_ok WITH INFO FROM opt_outs.real_email_ok
UPDATE en_users
JOIN opt_outs
ON en_users.Supporter_ID = opt_outs.Supporter_ID
SET en_users.real_email_ok = opt_outs.real_email_ok;

-- MAKE A SELECT AND EXPORT IT EITHER AS CSV OR TABLE

SELECT * FROM en_users
WHERE tipo = 1
AND
(Suppressed = 'Y' OR real_email_ok = 'N' OR soft_bounce = 'Y'  OR privacy_email_sent IS NULL);
