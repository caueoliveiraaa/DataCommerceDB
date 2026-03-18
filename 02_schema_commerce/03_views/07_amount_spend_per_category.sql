/*
Purpose: Retrieve how much was spend on each product category.
Steps:
    - Make sure the view is created without errors.
    - Select the category and calculate the amount spend on the price column.
    - Get only categories which are not null.
    - Group the result of the price sum into each category.
    - Order by the total spent, starting from the highest.
*/

DROP VIEW IF EXISTS commerce.amount_spent_per_category;

CREATE VIEW commerce.amount_spent_per_category AS
SELECT category, SUM(price) as total_spent FROM commerce.products
WHERE category IS NOT NULL
GROUP BY category
ORDER BY total_spent DESC;

SELECT * FROM commerce.amount_spent_per_category;