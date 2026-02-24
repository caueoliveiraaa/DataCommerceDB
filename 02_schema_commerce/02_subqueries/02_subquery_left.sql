/*
Purpose: Display the left join logic into a subquery.
Steps:
    - Find orders with more than 100 units.
    - Find out how much the user spent on each product.
    - Order by the name of users.
    - Apply the left join logic into a subquery in the from clause.
*/

SELECT *
FROM (
    SELECT
        u.name user_name,
        p.name product_name,
        p.price product_price,
        p.category product_category,
        o.quantity orders_quantity,
        o.quantity * p.price total_spent
    FROM commerce.users u
    LEFT OUTER JOIN commerce.orders o ON o.user_id = u.user_id
    LEFT OUTER JOIN commerce.products p ON p.product_id = o.product_id
    WHERE quantity > 100
) AS subquery
ORDER BY subquery.user_name;
