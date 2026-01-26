/*
Purpose: Query the amount of inactive users.
*/

WITH quantity_of_invalid_users AS (
    SELECT COUNT(u.user_id) invalid_quantity
	FROM commerce.users u
	WHERE u.active = FALSE
)

SELECT * FROM quantity_of_invalid_users;
