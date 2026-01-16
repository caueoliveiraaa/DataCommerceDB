/*
Purpose: Display a basic join amonsgt all main tables.
*/
SELECT * FROM commerce.users u
LEFT JOIN commerce.orders o ON o.user_id = u.user_id
LEFT JOIN commerce.products p ON p.product_id = o.product_id
LEFT JOIN commerce.stock s ON s.product_id = p.product_id
WHERE u.user_id <= 10
ORDER BY u.user_id ASC;
