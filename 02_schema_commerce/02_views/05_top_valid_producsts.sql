/*
Purpose: Retrieves the top 10 valid products.
Steps:
    - Drops and creates the view to avoid errors.
    - Join the products table with the orders and stocks tables.
    - Search for the products that have a category.
    - Search for the products whose order quantity is lower than the amount in the stock.
    - Aggregate the total revenue per product (SUM of order quantity × product price).
    - Group the results by product details (id, name, price, category).
    - Order the products by revenue in descending order and limit to the top 10.
*/

-- Drop view if it exists
DROP VIEW IF EXISTS commerce.top_valid_products;

-- Create the view, applying the logic of the query
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

-- Select data from the view that has been created
SELECT * FROM commerce.top_valid_products;
