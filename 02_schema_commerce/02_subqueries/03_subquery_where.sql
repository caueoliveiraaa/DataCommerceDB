/*
Purpose: Find all the users that have placed more than 700 orders.
Steps:
    - Select the name and email od the users that appear in the subquery's result.
    - Filter by quantity (> 700) and categories that are not null.
*/

SELECT u.name, u.email FROM commerce.users u
WHERE u.user_id IN (
    SELECT o.user_id FROM commerce.orders o
    INNER JOIN commerce.products p ON p.product_id = o.product_id
    WHERE o.quantity > 700
    AND p.category IS NOT NULL
);
