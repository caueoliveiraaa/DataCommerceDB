/*
Purpose: Retrieves all the inactive users from the table commerce.users.
Steps:
    - Drop the view if it exists.
    - Create the view that queries all rows where the user is active.
    - Query the view to display the result.
*/

-- Drop view if it exists
DROP VIEW IF EXISTS commerce.inactive_users;

-- Create the view, applying the logic of the query
CREATE VIEW commerce.inactive_users AS
SELECT user_id, user_name, email
FROM commerce.users
WHERE active = TRUE
ORDER BY user_id;

-- Select data from the view that has been created
SELECT * FROM commerce.inactive_users;
