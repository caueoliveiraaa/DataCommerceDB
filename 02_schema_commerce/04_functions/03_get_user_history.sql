/*
Purpose: Create a function that brings the user's buying history.
*/

CREATE OR REPLACE FUNCTION commerce.get_user_history(
    param_user_id INT
)
RETURNS TABLE(
	product_name VARCHAR(70),
	product_price NUMERIC(10, 2),
	quantity_ordered INT,
	total_spent_on_product NUMERIC(10, 2)
)
AS $$
BEGIN
    IF param_user_id IS NULL
    OR param_user_id <= 0 THEN
        RAISE EXCEPTION 'The user id cannot be null or zero!';
    END IF;

    RETURN QUERY SELECT 
        p.name,
        p.price,
        o.quantity,
        (p.price * o.quantity) total_spent_on_product
	FROM commerce.products p
	INNER JOIN commerce.orders o ON o.product_id = p.product_id
	WHERE o.user_id = param_user_id;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM commerce.get_user_history(1);
