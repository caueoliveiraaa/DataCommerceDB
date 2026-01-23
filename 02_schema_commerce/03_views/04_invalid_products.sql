/*
Purpose: Retrieves all the invalid products available. 
Steps:
    - Drops and creates the view to avoid errors.
    - Join the products table with the orders and stocks tables.
    - Search for the products that have no category.
    - Search for the products whose order quantity is higher than the amount in the stock.
*/

-- Drop view if it exists
DROP VIEW IF EXISTS commerce.invalid_products;

-- Create the view, applying the logic of the query
CREATE VIEW commerce.invalid_products AS
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
WHERE category IS NULL
AND o.quantity > s.stock_quantity
ORDER BY product_id, name;

-- Select data from the view that has been created
SELECT * FROM commerce.invalid_products;
