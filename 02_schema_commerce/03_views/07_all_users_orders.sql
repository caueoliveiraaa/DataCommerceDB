/*
Purpose: Retrieves the total number of orders placed by each user.
Steps:
    - Drop the view if it exists.
    - Join the orders table with the users table to get user details.
    - Group the results by user_id and user name so that each user has one row.
    - Count the number of orders per active user using COUNT(order_id).
    - Order the results by user_id for clarity.
*/

-- Drop the view if it exists
DROP VIEW IF EXISTS commerce.all_orders_by_user;

-- Create the view, applying the logic of the query
CREATE VIEW commerce.all_orders_by_user AS
SELECT u.name, o.user_id, COUNT(o.order_id) total_orders
FROM commerce.orders o
INNER JOIN commerce.users u ON u.user_id = o.user_id
WHERE u.active = TRUE
GROUP BY o.user_id, u.name
ORDER BY total_orders DESC;

-- Select data from the view that has been created
SELECT * FROM commerce.all_orders_by_user;
