/*
Purpose: Display all possible combinations of users and products.
Steps:
    - Get all the data from users and products.
Notes:
    - Use CROSS JOIN to combine every user with every product.
    - This produces a Cartesian product (N users × M products).
*/

SELECT
    u.name AS user_name,
    p.name AS product_name
FROM commerce.users u
CROSS JOIN commerce.products p;
