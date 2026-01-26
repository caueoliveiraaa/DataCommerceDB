/*
Purpose: Verify all the available triggers that have been created.
*/

SELECT tgname AS trigger_name, relname AS table_name
FROM pg_trigger
JOIN pg_class ON pg_class.oid = pg_trigger.tgrelid
WHERE NOT tgisinternal;
