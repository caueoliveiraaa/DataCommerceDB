/*
Purpose: Display a full join.
Steps:
    - Show all users and all orders Even if some users never ordered 
        or some orders have no user.
    - Order by user id and then name in descending order.
*/

SELECT
    u.user_id,
    u.name,
    u.age,
    o.order_id
FROM commerce.users u
FULL OUTER JOIN commerce.orders o ON u.user_id = o.user_id
ORDER BY u.user_id;
