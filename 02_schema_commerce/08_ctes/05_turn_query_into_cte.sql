/*
Purpose: Turn the first query into a CTE.
Steps:
    - Setup the first query.
    - Achieve the same result with a CTE.
*/

-- Query with all three joins
SELECT
    u.user_id,
    u.name AS user_name,
    u.email,
    u.active,
    u.age,
    p.product_id,
    p.name AS product_name,
    p.category,
    p.price,
    o.order_id,
    o.quantity,
    o.created_at,
    o.created_date,
    (o.quantity * p.price) AS total_value
FROM commerce.orders o
INNER JOIN commerce.users u ON o.user_id = u.user_id
INNER JOIN commerce.products p ON o.product_id = p.product_id
INNER JOIN commerce.stock s ON s.product_id = p.product_id
WHERE u.active = TRUE
	AND p.category IS NOT NULL
	AND o.quantity <= s.stock_quantity
ORDER BY u.name, o.created_date DESC;

-- Query with CTE containing the orders and products
WITH valid_orders_and_products AS (
	SELECT
	    p.product_id,
	    p.name product_name,
	    p.category,
	    p.price,
	    o.user_id,
	    o.order_id,
	    o.quantity,
	    o.created_at order_created_at,
	    o.created_date order_created_date,
	    (o.quantity * p.price) AS total_value
	FROM commerce.orders o
	JOIN commerce.products p ON o.product_id = p.product_id
	JOIN commerce.stock s ON s.product_id = p.product_id
	WHERE p.category IS NOT NULL
		AND o.quantity <= s.stock_quantity
	
)

SELECT
    u.user_id,
    u.name user_name,
    u.email,
    u.active,
    u.age,
	v.product_id,
	v.product_name,
	v.price,
	v.category,
	v.order_created_at,
	v.order_created_date,
	v.total_value
FROM commerce.users u
JOIN valid_orders_and_products v ON u.user_id = v.user_id
WHERE u.active = TRUE
ORDER BY u.name, v.order_created_date DESC;