
DROP VIEW IF EXISTS commerce.amount_with_grouping_sets;

CREATE VIEW commerce.amount_with_grouping_sets AS

SELECT name, category, SUM(price) as total_spent FROM commerce.products
WHERE category IS NOT NULL
GROUP BY
    GROUPING SETS (
        (name, category),
        (name),
        (category)
    )
ORDER BY total_spent DESC;

SELECT * FROM commerce.amount_with_grouping_sets;