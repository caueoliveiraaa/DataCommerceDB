/*
Purpose: Display a right join.
Steps:
    - Find orders with more than 100 units.
    - Find out how much the user spent on each product.
    - Order by name of users.
*/
SELECT
    u.name user_name,
    u.age user_agr,
    p.name product_name,
    p.price product_price,
    o.quantity quantity_bought,
    o.quantity * p.price total_spent
FROM commerce.orders o
RIGHT OUTER JOIN commerce.users u ON o.user_id = u.user_id
RIGHT OUTER JOIN commerce.products p ON p.product_id = o.product_id
WHERE o.quantity > 100
ORDER BY u.name, u.email;
