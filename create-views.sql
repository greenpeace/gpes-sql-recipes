/*

USEFUL VIEWS

*/

-- VIEW WITH DONORS

CREATE VIEW donnors AS
SELECT *
FROM `en_users`
WHERE tipo IN (0,2,3,4,5);
