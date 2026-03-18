/*
Purpose: Display an inner join, joining all tables.
Steps:
    - Get the data from the users table.
    - Join the orders with the users via user id.
    - Join the products with the users via product id.
    - Join the stocks with the products via product id
    - Get only the categories and ages that are no null.
    - Get only valid oder quantities that are <= stock quantity.
    - Order by the user name and email.
*/

SELECT
    u.name user_name, 
    u.email user_email,
    p.name product_name,
    p.price product_price,
    p.category product_category,
    o.quantity order_quantity,
    s.stock_quantity
FROM commerce.users u
INNER JOIN commerce.orders o ON o.user_id = u.user_id
INNER JOIN commerce.products p ON p.product_id = o.product_id
INNER JOIN commerce.stock s ON s.product_id = p.product_id
WHERE p.category IS NOT NULL
AND u.age IS NOT NULL
AND o.quantity <= s.stock_quantity
ORDER BY u.name, u.email;
