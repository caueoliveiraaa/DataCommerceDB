/*
Purpose: Retrieves all the valid products available.
*/

DROP VIEW IF EXISTS commerce.valid_products;

CREATE VIEW commerce.valid_products AS
SELECT
    p.product_id product_id,
    p.name product_name,
    p.price product_price,
    p.category product_category,
    o.order_id order_id,
    o.quantity order_quantity,
    s.stock_id stock_id,
    s.stock_quantity stock_quantity
FROM commerce.products p
INNER JOIN commerce.orders o ON p.product_id = o.product_id
INNER JOIN commerce.stock s ON s.product_id = p.product_id
WHERE category IS NOT NULL
AND o.quantity <= s.stock_quantity
ORDER BY product_id, name;

SELECT * FROM commerce.valid_products;
