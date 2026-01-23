/*
Purpose: Verify all the available procedures that have been created.
*/

SELECT proname AS procedure_name,
    n.nspname AS schema_name,
    pg_get_function_arguments(p.oid) AS arguments,
    pg_get_function_result(p.oid) AS return_type
FROM pg_proc p
JOIN pg_namespace n ON p.pronamespace = n.oid
WHERE p.prokind = 'p'
ORDER BY schema_name, procedure_name;
