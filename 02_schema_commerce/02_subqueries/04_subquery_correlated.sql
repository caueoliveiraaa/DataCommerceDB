/*
Purpose: Find products that have been ordered more than once.
Steps:
    - Select the ids and names from the table commerce.products.
    - Use a subquery in the where clause to find the products ordered more than once.
    - Use the 'p' alias, which references the products table inside the subquery.
*/

SELECT p.product_id, p.name
FROM commerce.products p
WHERE (
    SELECT COUNT(*) FROM commerce.orders o
    WHERE o.product_id = p.product_id
) > 1;
