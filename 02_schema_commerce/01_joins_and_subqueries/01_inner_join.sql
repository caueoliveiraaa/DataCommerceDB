/*
Purpose: Display a basic inner join.
Steps:
    - Remove categories that are null.
    - Order by name of users.
*/
SELECT
    u.name "User name", 
    u.email "User e-mail",
    p.name "Product name",
    p.price "Product price",
    p.category "Product category",
    o.quantity "Amonunt bought",
    s.stock_quantity "Amonunt in stock"
FROM commerce.users u
INNER JOIN commerce.orders o ON o.user_id = u.user_id
INNER JOIN commerce.products p ON p.product_id = o.product_id
INNER JOIN commerce.stock s ON s.product_id = p.product_id
WHERE category IS NOT NULL
ORDER BY u.name, u.email;
