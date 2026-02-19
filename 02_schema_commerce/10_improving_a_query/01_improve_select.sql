/*
Purpose: Write a slow query and then make it faster and document why.
Notes:
    - Write both the bad query and the improved version.
    - Create indexes and apply a better querying logic for the second query.
    - Use EXPLAIN ANALYZE to verify the improvement in performance.
Steps:
    - Steps of the slow query:
        - Select all the columns.
        - Filter created_at with the EXTRACT function.
        - Does not explore index on created_at.
    - Steps of the improved query:
        - Select specific columns.
        - Filter created_at a date range logic, so that the index applies.
        - Make use of the indexes created to have a faster result from que query.
*/

EXPLAIN ANALYZE
SELECT * FROM commerce.users u
INNER JOIN commerce.orders o ON o.user_id = u.user_id
INNER JOIN commerce.products p ON p.product_id = o.product_id
INNER JOIN commerce.stock s ON s.product_id = p.product_id
WHERE p.category IS NOT NULL
	AND u.age IS NOT NULL
	AND o.quantity <= s.stock_quantity
	AND EXTRACT(MONTH FROM u.created_at) = EXTRACT(MONTH FROM CURRENT_DATE)
ORDER BY u.name, u.email;

-- select count(*) from commerce.users;
-- select count(*) from commerce.orders;
-- CALL create_indexes();
-- CALL drop_indexes();

EXPLAIN ANALYZE
SELECT u.user_id, u.name, o.order_id, p.product_id, p.name
FROM commerce.users u
INNER JOIN commerce.orders o ON o.user_id = u.user_id
INNER JOIN commerce.products p ON p.product_id = o.product_id
INNER JOIN commerce.stock s ON s.product_id = p.product_id
WHERE p.category IS NOT NULL
	AND u.age IS NOT NULL
	AND o.quantity <= s.stock_quantity
	AND u.created_at >= date_trunc('month', CURRENT_DATE) 
	AND u.created_at < date_trunc('month', CURRENT_DATE) + interval '1 month'
ORDER BY u.name, u.email;
