/*
Purpose: Retrieves the average product price per category.
Steps:
    - Drop the view if it exists.
    - Select products that have a category (exclude NULL categories).
    - Group the products by category so each category is summarized.
    - Calculate the average price of products within each category using AVG(price).
    - Create the view to store this aggregated result for easy querying.
*/

-- Drop the view if it exists
DROP VIEW IF EXISTS commerce.avg_per_category;

-- Create the view, applying the logic of the query
CREATE VIEW commerce.avg_per_category AS
SELECT category, AVG(price)::NUMERIC(10,2) AS avg_price
FROM commerce.products
WHERE category IS NOT NULL
GROUP BY category
ORDER BY avg_price DESC;

-- Select data from the view that has been created
SELECT * FROM commerce.avg_per_category;
