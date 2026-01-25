/*
Purpose: Confirm the data has been inserted successfully.
Steps:
    - Count the rows of each tables to confirm the data has been inserted.
*/

SELECT
    (SELECT COUNT(*) FROM commerce.users) AS users_quantity,
    (SELECT COUNT(*) FROM commerce.products) AS products_quantity,
    (SELECT COUNT(*) FROM commerce.orders) AS orders_quantity,
    (SELECT COUNT(*) FROM commerce.stock) AS stocks_quantity;
