/*
Purpose: Create or replace the procedures that inserts random dates into tables.
*/

CREATE OR REPLACE PROCEDURE commerce.randomize_created_dates()
LANGUAGE plpgsql 
AS $$
DECLARE
    random_ts TIMESTAMP;
BEGIN
    UPDATE commerce.users
    SET created_at = TIMESTAMP '2020-01-01'
        + (random() * (EXTRACT(EPOCH FROM TIMESTAMP '2025-12-31 23:59:59'
        - TIMESTAMP '2020-01-01'))) * INTERVAL '1 second';

    UPDATE commerce.products
    SET created_at = TIMESTAMP '2020-01-01'
        + (random() * (EXTRACT(EPOCH FROM TIMESTAMP '2025-12-31 23:59:59'
        - TIMESTAMP '2020-01-01'))) * INTERVAL '1 second';

    UPDATE commerce.orders
    SET created_at = TIMESTAMP '2020-01-01'
        + (random() * (EXTRACT(EPOCH FROM TIMESTAMP '2025-12-31 23:59:59'
        - TIMESTAMP '2020-01-01'))) * INTERVAL '1 second';

    UPDATE commerce.stock
    SET last_restock = TIMESTAMP '2020-01-01'
        + (random() * (EXTRACT(EPOCH FROM TIMESTAMP '2025-12-31 23:59:59'
        - TIMESTAMP '2020-01-01'))) * INTERVAL '1 second';
END;
$$;

CALL commerce.randomize_created_dates();
