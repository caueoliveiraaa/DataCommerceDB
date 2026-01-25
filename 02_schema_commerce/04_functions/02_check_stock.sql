/*
Purpose: Create or replace the function that checks the stock.
Steps:
    - Create or replace the function check_stock.
    - Apply the logic of querying the product id in stockl.
    - Return a boolean, indicating if the requested amount is valid.
*/

-- Create the function to check the stock
CREATE OR REPLACE FUNCTION commerce.check_stock(id_of_product INT, requested_amount INT)
RETURNS BOOLEAN AS $$
DECLARE
	available_quantity INT;
BEGIN
	SELECT s.stock_quantity INTO available_quantity
	FROM commerce.stock s
	WHERE s.product_id = id_of_product;

	RETURN available_quantity >= requested_amount;
END;
$$ LANGUAGE plpgsql;

-- Run check_stock
SELECT commerce.check_stock(3, 10);
