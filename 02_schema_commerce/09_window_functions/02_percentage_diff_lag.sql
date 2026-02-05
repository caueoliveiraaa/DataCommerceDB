/*
Purpose: Calculate month-to-month sales percentage change.
Notes:
    - Aggregate total sales per month using SUM().
    - Use LAG() to access the previous month's total.
    - Compute percentage difference: (current - previous) / previous * 100.
    - ORDER BY month ensures correct chronological comparison.
*/

WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', o.created_at) AS month,
        SUM(quantity * p.price) AS total_sales
    FROM commerce.orders o
    JOIN commerce.products p ON o.product_id = p.product_id
    GROUP BY DATE_TRUNC('month', o.created_at)
)

SELECT 
    month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY month) AS prev_sales,
    CASE 
        WHEN LAG(total_sales) OVER (ORDER BY month) IS NULL THEN NULL
        ELSE ROUND(
            (total_sales - LAG(total_sales) OVER (ORDER BY month)) 
            / LAG(total_sales) OVER (ORDER BY month) * 100, 2
        )
    END AS sales_diff_percentage
FROM monthly_sales
ORDER BY month;
