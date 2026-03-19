/*
Purpose: Display a right join.
Steps:
    - Get data from orders, users and products.
    - Join the users with the orders via user id.
    - Join the products with the orders via product id.
    - Get only the quantities that are higher than 500.
    = Order by the user's name.
Notes:
    - The right join brings all the matching rows from the right table and
    the possible matching rows from the left table, bring null values 
    where there is no match on the left side.
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
WHERE o.quantity > 500
ORDER BY u.name;
