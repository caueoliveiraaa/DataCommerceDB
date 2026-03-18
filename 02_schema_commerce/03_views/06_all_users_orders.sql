/*
Purpose: Retrieves the total number of orders placed by each user.
Steps:
    - Make sure the view is created without errors.
    - Select the user name, the order if and count the order id.
    - Join the table users with orders via user id.
    - Get only the users who are active.
    - Group the count by user if and user name.
    - Order by the count, starting from the highest.
*/

DROP VIEW IF EXISTS commerce.all_orders_by_user;

CREATE VIEW commerce.all_orders_by_user AS
SELECT u.name, o.user_id, COUNT(o.order_id) total_orders
FROM commerce.orders o
INNER JOIN commerce.users u ON u.user_id = o.user_id
WHERE u.active = TRUE
GROUP BY o.user_id, u.name
ORDER BY total_orders DESC;

SELECT * FROM commerce.all_orders_by_user;
