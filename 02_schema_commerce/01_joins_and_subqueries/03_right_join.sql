/*
Purpose: Display a right join.
Steps:
    - Find orders with more than 100 units.
    - Find out how much the user spent on each product.
    - Order by name of users.
*/
SELECT
    u.name AS user_name,
    u.age AS user_agr,
    p.name AS product_name,
    p.price AS product_price,
    o.quantity AS quantity_bought,
    o.quantity * p.price AS total_spent
FROM commerce.orders o
RIGHT OUTER JOIN commerce.users u ON o.user_id = u.user_id
RIGHT OUTER JOIN commerce.products p ON p.product_id = o.product_id
WHERE o.quantity > 100
ORDER BY u.name, u.email ASC;
