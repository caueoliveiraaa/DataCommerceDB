/*
Purpose: Create the logic to optimize a query via index.
Notes:
    - The following commands should be executed individually.
*/

-- Query to search orders between date range
EXPLAIN ANALYZE
SELECT o.order_id, o.user_id, o.product_id, o.created_at
FROM commerce.orders o
WHERE o.product_id = 20
AND o.created_date BETWEEN '2025-01-01' AND '2025-12-31'
ORDER BY o.created_date;

-- Create the index to optimize the query
CREATE INDEX idx_orders_product_date
ON commerce.orders(product_id, created_date);

-- Drop the index to check the speed of the query
-- DROP INDEX commerce.idx_orders_product_date;
