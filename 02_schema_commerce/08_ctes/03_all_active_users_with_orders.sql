/*
Purpose: Query all valid users who have placed an order.
*/

WITH all_valid_users_with_orders AS (
    SELECT
		u.user_id,
		u.name,
		u.email
	FROM commerce.users u
	WHERE u.active = TRUE
	AND u.age IS NOT NULL
	AND u.address IS NOT NULL
	AND u.user_id IN (
		SELECT o.user_id  FROM commerce.orders o
		WHERE o.user_id = u.user_id
	)
)

SELECT * FROM all_valid_users_with_orders;