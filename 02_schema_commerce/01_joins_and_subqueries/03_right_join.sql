/*
Purpose: Display a basic right join.
Steps:
    - Find orders with more than 100 units.
    - Find out how much the user spent on each product.
    - Order by name of users.
*/
SELECT
    u.name "User name",
    p.name "Product name",
    p.price "Product price",
    o.quantity "Amount bought",
    o.quantity * p.price "Total spent"
FROM commerce.orders o
RIGHT JOIN commerce.users u ON o.user_id = u.user_id
RIGHT JOIN commerce.products p ON p.product_id = o.product_id
WHERE o.quantity > 100
ORDER BY u.name, u.email;
