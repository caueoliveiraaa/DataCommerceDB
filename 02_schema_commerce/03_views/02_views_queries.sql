/*
Purpose: Centralize querying of all views.
*/

-- View all inactive users
SELECT * FROM commerce.inactive_users;

-- View all the valid products
SELECT * FROM commerce.valid_products;

-- View all the invalid products
SELECT * FROM commerce.invalid_products;

-- View all the top valid products
SELECT * FROM commerce.top_valid_products;

-- View all rows with null records
SELECT * FROM commerce.null_records;
