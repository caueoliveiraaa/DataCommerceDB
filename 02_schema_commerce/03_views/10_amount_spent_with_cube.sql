/*
Purpose: Retrieve the amount spent for name + category and then just for
  name and category individually via the CUBE subclass.
*/

DROP VIEW IF EXISTS commerce.amount_with_cube;

CREATE VIEW commerce.amount_with_cube AS

SELECT name, category, SUM(price) as total_spent FROM commerce.products
WHERE category IS NOT NULL
GROUP BY
    CUBE (name, category)
ORDER BY total_spent DESC;

SELECT * FROM commerce.amount_with_cube;