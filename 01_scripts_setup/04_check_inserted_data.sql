/*
Purpose: Confirm the data has been inserted successfully.
*/

SELECT
    (SELECT COUNT(*) FROM commerce.users) AS users_quantity,
    (SELECT COUNT(*) FROM commerce.products) AS products_quantity,
    (SELECT COUNT(*) FROM commerce.orders) AS orders_quantity,
    (SELECT COUNT(*) FROM commerce.stock) AS stocks_quantity;
