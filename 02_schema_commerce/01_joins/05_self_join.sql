/*
Purpose: Find users with the same name.
Steps:
    - Get data from users and orders.
    - Join the orders with the users via user id.
    - Order by the user's name.
Notes:
    - The self join executes a join on the same table.
*/

SELECT DISTINCT u1.name repeated_names
FROM commerce.users u1
INNER JOIN commerce.users u2 ON u1.name = u2.name
ORDER BY repeated_names;
