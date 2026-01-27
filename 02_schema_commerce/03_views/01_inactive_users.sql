/*
Purpose: Retrieves all the inactive users from the table commerce.users.
*/

DROP VIEW IF EXISTS commerce.inactive_users;

CREATE VIEW commerce.inactive_users AS
SELECT user_id, name, email, active
FROM commerce.users
WHERE active = FALSE
ORDER BY user_id;

SELECT * FROM commerce.inactive_users;
