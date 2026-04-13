/*
Purpose: Retrieve how much was spend on each product category.
*/

DROP VIEW IF EXISTS commerce.amount_spent_per_category;

CREATE VIEW commerce.amount_spent_per_category AS
SELECT category, SUM(price) as total_spent FROM commerce.products
WHERE category IS NOT NULL
GROUP BY category
ORDER BY total_spent DESC;

SELECT * FROM commerce.amount_spent_per_category;