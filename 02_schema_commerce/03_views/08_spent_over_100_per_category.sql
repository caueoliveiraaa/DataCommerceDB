/*
Purpose: Retrieve how much was spend on each product category but only for
  groups that spent over 100.
*/

DROP VIEW IF EXISTS commerce.spent_over_100_per_category;

CREATE VIEW commerce.spent_over_100_per_category AS

SELECT category, SUM(price) as total_spent FROM commerce.products
WHERE category IS NOT NULL
GROUP BY category
HAVING SUM(price) > 100
ORDER BY total_spent DESC;

SELECT * FROM commerce.spent_over_100_per_category;