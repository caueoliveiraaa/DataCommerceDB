/*
Purpose: Display a basic left join.
Steps:
    - Find orders with more than 100 units.
    - Find out how much the user spent on each product.
    - Order by name of users.
*/
SELECT
    u.name "User name",
    p.name "Product name",
    p.price "Product price",
    o.quantity "Amonunt bought",
    o.quantity * p.price "Total spent"
FROM commerce.users u
LEFT JOIN commerce.orders o ON o.user_id = u.user_id
LEFT JOIN commerce.products p ON p.product_id = o.product_id
WHERE quantity > 100
ORDER BY u.name, u.email;
