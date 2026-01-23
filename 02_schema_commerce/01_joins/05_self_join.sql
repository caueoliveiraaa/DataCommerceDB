/*
Purpose: Find users with the same name.
Steps:
    - Join the users table to itself on the name column.
    - Display the unique names found in the query.
    - Order results by repeated_names.
*/
SELECT DISTINCT u1.name repeated_names
FROM commerce.users u1
INNER JOIN commerce.users u2 ON u1.name = u2.name
ORDER BY repeated_names;
