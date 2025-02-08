CREATE OR REPLACE FUNCTION udf_classification_items_count(classification_name VARCHAR(30))
RETURNS VARCHAR(50)
AS
$$
DECLARE items_count INT;
BEGIN
	SELECT
		COUNT(i.id)
	FROM
		items AS i
	JOIN
		classifications AS c
	ON
		i.classification_id = c.id
	WHERE 
		c.name = classification_name
	INTO
		items_count;

	IF items_count = 0 THEN
	RETURN 'No items found.';
	ELSE
	RETURN CONCAT('Found ', items_count, ' items.');
	END IF;
END;
$$
LANGUAGE plpgsql;


SELECT udf_classification_items_count('BRONTOPROTOROCK');




CREATE OR REPLACE PROCEDURE udp_update_loyalty_status(min_orders INT)
AS
$$
BEGIN
    UPDATE 
		customers
	SET
		loyalty_card = TRUE
	WHERE
		id IN(
				SELECT 
					customer_id
				FROM
					orders
				GROUP BY
					customer_id
				HAVING
					COUNT(id)>= min_orders
		);
END;
$$
LANGUAGE plpgsql;


CALL udp_update_loyalty_status(4);

SELECT * FROM customers;