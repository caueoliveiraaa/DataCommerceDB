/*
Purpose: Verify all the available views that have been created.
*/

-- Select all views
SELECT table_schema,
    table_name AS view_name
FROM information_schema.views
ORDER BY table_schema, view_name;

-- Select all views from commerce schema
SELECT table_schema,
    table_name AS view_name
FROM information_schema.views
WHERE table_schema = 'commerce'
ORDER BY table_schema, view_name;