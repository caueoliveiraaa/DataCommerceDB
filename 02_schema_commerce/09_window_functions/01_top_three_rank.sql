/*
Purpose: Identify the ranking of products within each category based on total orders.
Notes:
    - Aggregate the total quantity ordered per product using SUM().
    - Use RANK() to assign a position to each product within its category.
    - PARTITION BY ensures the ranking restarts for each category independently.
    - ORDER BY SUM(o.quantity) DESC ranks products from most ordered to least.
    - GROUP BY is required to calculate totals per product and category.
    - Final ORDER BY displays results grouped by category and sorted by rank.
*/

SELECT
    p.category,
    p.name AS product_name,
    SUM(o.quantity) AS total_orders,
    RANK() OVER (
        PARTITION BY p.category 
        ORDER BY SUM(o.quantity) DESC
    ) AS rank_position
FROM commerce.orders o
JOIN commerce.products p ON o.product_id = p.product_id
GROUP BY p.category, p.name
ORDER BY p.category, rank_position;
