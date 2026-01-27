/*
Purpose: Create a function that trys to devide two numbers.
*/

CREATE OR REPLACE FUNCTION commerce.try_division_by_zero(
    first_number INT,
    second_number INT
)
RETURNS INT
AS $$
BEGIN
	IF first_number <= 0 THEN
		RAISE EXCEPTION 'The first number needs to be higher than 0!';
	END IF;
    BEGIN
        RETURN first_number / second_number;
	EXCEPTION 
		WHEN division_by_zero THEN
			RAISE EXCEPTION 'It is not possible to devide numbers by zero.';
		WHEN OTHERS THEN 
			RAISE EXCEPTION 'An unexpected error occured: %', SQLERRM;
    END;
END;
$$ LANGUAGE plpgsql;

SELECT commerce.try_division_by_zero(20, 2);