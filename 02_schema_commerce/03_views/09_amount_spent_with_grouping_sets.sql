/*
Purpose: Retrieve the amount spent for name + category and then just for
  name and category individually.
Steps:
    - Make sure the view is created without errors.
    - Select the the name and the category and calculate the amount spend on the price column.
    - Get only categories which are not null.
    - Group the result of the price sum into each category and name.
    - Make sure the results bring all the group variations with name and category.
    - Order by the total spent, starting from the highest.
*/

DROP VIEW IF EXISTS commerce.amount_with_grouping_sets;

CREATE VIEW commerce.amount_with_grouping_sets AS

SELECT name, category, SUM(price) as total_spent FROM commerce.products
WHERE category IS NOT NULL
GROUP BY
    GROUPING SETS (
        (name, category),
        (name),
        (category),
        ()
    )
ORDER BY total_spent DESC;

SELECT * FROM commerce.amount_with_grouping_sets;