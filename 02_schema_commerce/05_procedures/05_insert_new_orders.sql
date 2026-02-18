/*
Purpose: Insert more orders, so that indexes can be used to make queries faster.
*/

CREATE OR REPLACE PROCEDURE commerce.insert_new_orders(quantity_inserts INT)
LANGUAGE plpgsql
AS $$
DECLARE 
    random_user_id INT;
    random_product_id INT;
    random_quantity INT;
BEGIN
	IF quantity_inserts IS NULL OR quantity_inserts = 0 THEN
		RAISE EXCEPTION 'Parameter "quantity_inserts" cannot be null or zero!';
	END IF;

    WHILE quantity_inserts > 0 LOOP
        SELECT user_id INTO random_user_id 
        FROM commerce.users
        ORDER BY RANDOM()
        LIMIT 1;

        SELECT product_id INTO random_product_id 
        FROM commerce.products
        ORDER BY RANDOM()
        LIMIT 1;

        random_quantity := FLOOR(RANDOM() * 500 + 1);

        INSERT INTO commerce.orders(user_id, product_id, quantity)
        VALUES (random_user_id, random_product_id, random_quantity);

		quantity_inserts := quantity_inserts - 1;
	END LOOP;
END;
$$;

CALL commerce.insert_new_orders(1);
SELECT * FROM commerce.orders WHERE created_at::date = current_date;
