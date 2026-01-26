/*
Purpose: Find the 10 oldest users who are active.
*/

WITH oldest_users AS (
    SELECT user_id, name, age
    FROM commerce.users
    WHERE active = TRUE
    AND age IS NOT NULL
    ORDER BY age DESC
    LIMIT 10
)

SELECT * FROM oldest_users;
