/*
Purpose: Create a function that checks if the stock has the available amount.
*/

CREATE OR REPLACE FUNCTION commerce.check_stock(
	param_product_id INT,
	requested_amount INT
)
RETURNS BOOLEAN
AS $$
DECLARE
	available_quantity INT;
BEGIN
	SELECT s.stock_quantity INTO available_quantity
	FROM commerce.stock s
	WHERE s.product_id = param_product_id;

	IF available_quantity IS NULL THEN
		RAISE EXCEPTION 'Could not find a valid stock_quantity';
	END IF;
	IF requested_amount <= 0 THEN
		RAISE EXCEPTION 'The requested amount is not valid: %', requested_amount;
	END IF;

	RETURN available_quantity >= requested_amount;
END;
$$ LANGUAGE plpgsql;

SELECT commerce.check_stock(3, 10);
