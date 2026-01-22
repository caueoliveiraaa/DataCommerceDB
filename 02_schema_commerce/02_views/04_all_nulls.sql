/*
Purpose: Find all rows with null values from all four tables.
Steps:
    - Drop the view if it exists.
    - Create the view that queries all rows that have null values.
    - Query the view to display the result.
*/
DROP VIEW IF EXISTS commerce.null_records;

CREATE VIEW commerce.null_records AS
SELECT
    u.user_id AS user_id,
    u.name AS user_name,
    u.age AS user_age,
    u.address AS user_address,
    u.updated_at AS user_updated_at,
    p.product_id AS product_id,
    p.name AS product_name,
    p.category AS product_category,
    p.updated_at AS product_updated_at,
    o.updated_at AS order_updated_at,
    s.last_restock AS last_restock_date
FROM commerce.users u
INNER JOIN commerce.orders o ON o.user_id = u.user_id
INNER JOIN commerce.products p ON p.product_id = o.product_id
INNER JOIN commerce.stock s ON s.product_id = p.product_id
WHERE u.age IS NULL
OR u.address IS NULL
OR u.updated_at IS NULL
OR p.category IS NULL
OR p.updated_at IS NULL
OR o.updated_at IS NULL
OR s.last_restock IS NULL
ORDER BY u.user_id;

SELECT * FROM commerce.null_records;
