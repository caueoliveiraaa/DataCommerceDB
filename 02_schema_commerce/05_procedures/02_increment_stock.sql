/*
Purpose: Create a procedure that increments the amount of stock.
*/

CREATE OR REPLACE PROCEDURE commerce.increment_stock(
	param_product_id INT,
	amount_insert INT
)
LANGUAGE plpgsql
AS $$
DECLARE
	available_quantity INT;
BEGIN
	IF param_product_id IS NULL
	OR amount_insert IS NULL
	OR param_product_id = 0
	OR amount_insert = 0 THEN
		RAISE EXCEPTION 'Parameters cannot be null or zero!';
	END IF;

	WHILE amount_insert > 0 LOOP
		SELECT s.stock_quantity INTO available_quantity
		FROM commerce.stock s
		WHERE s.product_id = param_product_id;

		IF available_quantity >= 1000 THEN
			RAISE EXCEPTION 'The limit quantity per stock is 1000.';
		END IF;

		UPDATE commerce.stock
		SET stock_quantity = stock_quantity + 1
		WHERE product_id = param_product_id;
		
		amount_insert := amount_insert - 1;
	END LOOP;
END;
$$;

CALL commerce.increment_stock(1, 10);
SELECT stock_quantity FROM commerce.stock WHERE product_id = 1;
