/*
Purpose: Find products that have been ordered more than once.
*/

SELECT p.product_id, p.name
FROM commerce.products p
WHERE (
    SELECT COUNT(*) FROM commerce.orders o
    WHERE o.product_id = p.product_id
) > 1;
