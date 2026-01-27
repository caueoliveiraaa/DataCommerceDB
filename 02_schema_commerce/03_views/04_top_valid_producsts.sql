/*
Purpose: Retrieves the top 10 valid products.
*/

DROP VIEW IF EXISTS commerce.top_valid_products;

CREATE VIEW commerce.top_valid_products AS
SELECT
    p.product_id,
    p.name AS product_name,
    p.price AS product_price,
    p.category AS product_category,
    SUM(o.quantity * p.price) AS revenue
FROM commerce.products p
INNER JOIN commerce.orders o ON p.product_id = o.product_id
INNER JOIN commerce.stock s ON s.product_id = p.product_id
WHERE p.category IS NOT NULL
AND o.quantity <= s.stock_quantity
GROUP BY p.product_id, p.name, p.price, p.category
ORDER BY revenue DESC
LIMIT 10;

SELECT * FROM commerce.top_valid_products;
