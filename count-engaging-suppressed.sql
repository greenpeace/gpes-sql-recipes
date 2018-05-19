/*

COUNT SUPPRESSED

*/


-- TOTALS

SELECT Suppressed, COUNT(Suppressed) AS Total
FROM en_users
GROUP BY Suppressed;

-- INFO

SELECT 'Suppressed emails report' AS '';

-- SUPPRESSED BY TIPO

SELECT Suppressed, tipo, COUNT(Suppressed) AS Total
FROM en_users
WHERE tipo IN (1, 2, 3, 4, 5)
GROUP BY Suppressed, tipo;

