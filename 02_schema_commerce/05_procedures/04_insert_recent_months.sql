/*
Purpose: Update created_at and last_restock dates for current month and previous two months.
*/

CREATE OR REPLACE PROCEDURE commerce.randomize_recent_dates()
LANGUAGE plpgsql 
AS $$
DECLARE
    start_date TIMESTAMP := date_trunc('month', now()) - interval '2 months';
    end_date   TIMESTAMP := date_trunc('month', now()) + interval '1 month' - interval '1 second';
BEGIN
    UPDATE commerce.users
    SET created_at = start_date
        + (random() * (EXTRACT(EPOCH FROM end_date - start_date))) * INTERVAL '1 second';

    UPDATE commerce.products
    SET created_at = start_date
        + (random() * (EXTRACT(EPOCH FROM end_date - start_date))) * INTERVAL '1 second';

    UPDATE commerce.orders
    SET created_at = start_date
        + (random() * (EXTRACT(EPOCH FROM end_date - start_date))) * INTERVAL '1 second';

    UPDATE commerce.stock
    SET last_restock = start_date
        + (random() * (EXTRACT(EPOCH FROM end_date - start_date))) * INTERVAL '1 second';
END;
$$;

CALL commerce.randomize_recent_dates();
