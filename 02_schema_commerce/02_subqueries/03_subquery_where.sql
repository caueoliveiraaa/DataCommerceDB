/*
Purpose: Find all the users that have placed more than 700 orders.
*/

SELECT u.name, u.email FROM commerce.users u
WHERE u.user_id IN (
    SELECT o.user_id FROM commerce.orders o
    INNER JOIN commerce.products p ON p.product_id = o.product_id
    WHERE o.quantity > 700
    AND p.category IS NOT NULL
);
