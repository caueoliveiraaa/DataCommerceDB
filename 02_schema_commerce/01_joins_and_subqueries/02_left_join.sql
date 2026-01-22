/*
Purpose: Display a left join.
Steps:
    - Find orders with more than 100 units.
    - Find out how much the user spent on each product.
    - Order by name of users.
*/
SELECT
    u.name AS user_name,
    p.name AS product_name,
    p.price AS product_price,
    p.category AS product_category,
    o.quantity AS orders_quantity,
    o.quantity * p.price AS total_spent
FROM commerce.users u
LEFT OUTER JOIN commerce.orders o ON o.user_id = u.user_id
LEFT OUTER JOIN commerce.products p ON p.product_id = o.product_id
WHERE quantity > 100
ORDER BY u.name, u.email ASC;
