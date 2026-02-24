/*
Purpose: Find users with the same name.
*/

SELECT DISTINCT u1.name repeated_names
FROM commerce.users u1
INNER JOIN commerce.users u2 ON u1.name = u2.name
ORDER BY repeated_names;
