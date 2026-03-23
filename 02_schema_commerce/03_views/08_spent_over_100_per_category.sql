/*
Purpose: Retrieve how much was spend on each product category but only for
  groups that spent over 100.
Steps:
    - Make sure the view is created without errors.
    - Select the category and calculate the amount spend on the price column.
    - Get only categories which are not null.
    - Group the result of the price sum into each category.
    - Filter out the groups that spent less than 100.
    - Order by the total spent, starting from the highest.
*/

DROP VIEW IF EXISTS commerce.spent_over_100_per_category;

CREATE VIEW commerce.spent_over_100_per_category AS

SELECT category, SUM(price) as total_spent FROM commerce.products
WHERE category IS NOT NULL
GROUP BY category
HAVING SUM(price) > 100
ORDER BY total_spent DESC;

SELECT * FROM commerce.spent_over_100_per_category;