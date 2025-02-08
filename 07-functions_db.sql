CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR, last_name VARCHAR)
RETURNS VARCHAR AS
$$
	BEGIN
		IF first_name IS NULL AND last_name IS NULL THEN
			RETURN NULL;
		ELSEIF first_name IS NULL THEN
			RETURN INITCAP(last_name);
		ELSEIF last_name IS NULL THEN
			RETURN INITCAP(first_name);
		ELSE 
			RETURN INITCAP(first_name) || ' ' || INITCAP(last_name);
		END IF;	
	END
$$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION fn_calculate_future_value (initial_sum NUMERIC, yearly_interest_rate NUMERIC, number_of_years INT)
RETURNS NUMERIC AS
$$
	
	BEGIN
		RETURN ROUND(initial_sum * POWER((1 + yearly_interest_rate), number_of_years), 4);
	END
$$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION fn_calculate_future_value(
	initial_sum DECIMAL,
	yearly_interest_rate DECIMAL,
	number_of_years INT
) RETURNS DECIMAL
AS 
$$
BEGIN
	RETURN TRUNC(
		initial_sum * POWER(1 + yearly_interest_rate, number_of_years),
		4
	);
END;
$$
LANGUAGE plpgsql;


-- my way
CREATE OR REPLACE FUNCTION fn_calculate_future_value(
    p_initial_sum numeric,
    p_yearly_interest_rate numeric,
    p_number_of_years integer
)
RETURNS numeric AS
$$
DECLARE future_value numeric;
BEGIN
	ROUND(p_initial_sum * POWER((1 + p_yearly_interest_rate), p_number_of_years), 4) INTO future_value
    RETURN future_value;
END;

$$
LANGUAGE plpgsql;



/*
CREATE OR REPLACE FUNCTION fn_is_word_comprised(set_of_letters VARCHAR, word VARCHAR)
RETURNS BOOLEAN AS
$$
	DECLARE cleaned_word TEXT;
		cleaned_set TEXT;
		i INT := 1;
		letter CHAR;
		letter_count_word INT;
		letter_count_set INT;
	BEGIN
		cleaned_word := regexp_replace(lower(word), '[^a-z]', '', 'g');
    	cleaned_set := regexp_replace(lower(set_of_letters), '[^a-z]', '', 'g');

		WHILE i <= LENGTH(cleaned_word) LOOP
		letter:= SUBSTRING(cleaned_word FROM i FOR 1);

		letter_count_word := LENGTH(cleaned_word) - LENGTH(REPLACE(cleaned_word, letter, ''));
		letter_count_set := LENGTH(cleaned_set) - LENGTH(REPLACE(cleaned_set, letter, ''));

		IF letter_count_word > letter_count_set THEN
		RETURN FALSE;
		END IF;

		i := i + 1;
		END LOOP;

		RETURN TRUE;
	END;
$$
LANGUAGE plpgsql;
*/

CREATE OR REPLACE FUNCTION fn_is_word_comprised(
	set_of_letters VARCHAR,
	word VARCHAR
) RETURNS BOOLEAN
AS
$$
BEGIN
	RETURN TRIM(LOWER(word), LOWER(set_of_letters)) = '';
END;
$$
LANGUAGE plpgsql;

-- CREATE OR REPLACE FUNCTION fn_is_word_comprised(
-- 	set_of_letters VARCHAR,
-- 	word VARCHAR
-- ) RETURNS BOOLEAN
-- AS
-- $$
-- DECLARE
-- 	i INT;
-- 	letter CHAR(1);
-- BEGIN
-- 	for i IN 1..LENGTH(word) LOOP
-- 		letter := SUBSTRING(LOWER(word), i, 1); -- in programming like that word[i]
		
-- 		IF POSITION(letter IN LOWER(set_of_letters)) = 0 THEN
-- 			RETURN FALSE;
-- 		END IF;
-- 	END LOOP;
	
-- 	RETURN TRUE;
-- END;
-- $$
-- LANGUAGE plpgsql;



