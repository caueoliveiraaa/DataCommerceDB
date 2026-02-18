/*
Purpose: Create a procedure that inserts new random users.
*/

CREATE OR REPLACE PROCEDURE commerce.insert_random_users(quantity INT)
LANGUAGE plpgsql
AS $$
BEGIN
	IF quantity IS NULL OR quantity = 0 THEN
		RAISE EXCEPTION 'Parameter "quantity" cannot be null or zero!';
	END IF;

	WHILE quantity > 0 LOOP
		INSERT INTO commerce.users(email, name, age, address, created_at)
		SELECT
			LOWER(
				f.first_name || '.' || l.last_name || (SELECT (FLOOR(RANDOM()*100)::INT))
                || '@gmail' || (SELECT (FLOOR(RANDOM()*300)::INT)) || '.com'
			) AS email,
			f.first_name || ' ' || l.last_name AS name,
			(SELECT (FLOOR(RANDOM()*73 + 18)::INT)) AS age,
			r.random_address AS address,
			now() AS created_at
		FROM (
			SELECT unnest(
				ARRAY[
					'Alice',
					'Bruna',
					'Carla',
					'Cauê',
					'Eva',
					'Anna',
					'Gabriela',
					'Lucas'
				]
			) AS first_name) f,
			(
			SELECT unnest(
				ARRAY[
					'Silva',
					'Souza',
					'Oliveira',
					'Tikuna',
					'Pereira',
					'Almeida',
					'Guajajara',
					'Gomez'
				]
			) AS last_name ) l,
			(
			SELECT unnest(
				ARRAY[
					'Rua Cascade, ' || (SELECT (FLOOR(RANDOM()*900)::INT)) || ' - São Paulo, SP',  
					'Rua Manufacturers, ' || (SELECT (FLOOR(RANDOM()*900)::INT)) || ' - Florianópolis, SC',
					'Rua São Paulo, ' || (SELECT (FLOOR(RANDOM()*900)::INT)) || ' - Salvador, BA',
					'Rua Springview, ' || (SELECT (FLOOR(RANDOM()*900)::INT)) || ' - São Paulo, SP', 
					'Rua Guanabara, ' || (SELECT (FLOOR(RANDOM()*900)::INT)) || ' - Florianópolis, SC', 
					'Rua Timbó, ' || (SELECT (FLOOR(RANDOM()*900)::INT)) || ' - Fortaleza, CE',
					'Rua Paraxó, ' || (SELECT (FLOOR(RANDOM()*900)::INT)) || ' - Salvador, BA',
					'Rua Village, ' || (SELECT (FLOOR(RANDOM()*900)::INT)) || ' - São Paulo, SP'
				]
			) AS random_address ) r
		ORDER BY RANDOM() 
		LIMIT 1
		ON CONFLICT (email) DO NOTHING;

		quantity := quantity - 1;
	END LOOP;
EXCEPTION 
	WHEN unique_violation THEN
		RAISE NOTICE 'Duplicate email, skipping insert. Try again.';
	WHEN OTHERS THEN
		RAISE NOTICE 'An error occured while inserting new users: %', SQLERRM;
END;
$$;

CALL commerce.insert_random_users(1);
SELECT * FROM commerce.users WHERE created_at::date = current_date;
-- DELETE FROM commerce.users WHERE created_at::date = current_date;
-- SELECT COUNT(*) FROM commerce.users;
