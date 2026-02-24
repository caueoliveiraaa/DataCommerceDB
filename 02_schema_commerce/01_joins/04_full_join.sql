/*
Purpose: Display a full join.
*/

SELECT
    u.user_id,
    u.name,
    u.age,
    o.order_id
FROM commerce.users u
FULL OUTER JOIN commerce.orders o ON u.user_id = o.user_id
ORDER BY u.user_id;
