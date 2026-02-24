/*
Purpose: Turn the inner join logic into a subquery in the select list.
*/

SELECT * FROM
(
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
) AS subquery
ORDER BY subquery.user_name, subquery.user_email;
