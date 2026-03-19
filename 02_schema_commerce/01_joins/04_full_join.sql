/*
Purpose: Display a full join.
Steps:
    - Get data from users and orders.
    - Join the orders with the users via user id.
    - Order by the user's name.
Notes:
    - A full join brings all the matching rows and rows that don't match 
    was well from both tables, bringing null values where there is no match.
*/

SELECT
    u.user_id,
    u.name,
    u.age,
    o.order_id
FROM commerce.users u
FULL OUTER JOIN commerce.orders o ON u.user_id = o.user_id
ORDER BY u.user_id;
