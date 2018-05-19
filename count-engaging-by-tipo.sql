/*

COUNT USERS BY TIPO

*/

-- UPDATE WHERE TIPO IS NULL

UPDATE en_users
SET tipo = 1
WHERE tipo IS NULL;

-- INFO

SELECT 'Tipo report' AS '';

-- FACET ORDER BY COUNT

SELECT `tipo`, COUNT(`tipo`)
FROM `en_users`
GROUP BY `tipo`
ORDER BY COUNT(`tipo`) DESC;
