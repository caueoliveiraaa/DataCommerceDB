/*
Purpose: Find the highest price per category.
*/

WITH highest_prices AS (
    SELECT p.category, MAX(p.price) highest_price
    FROM commerce.products p
    WHERE p.category IS NOT NULL
    GROUP BY p.category
    ORDER BY highest_price DESC
)

SELECT * FROM highest_prices;