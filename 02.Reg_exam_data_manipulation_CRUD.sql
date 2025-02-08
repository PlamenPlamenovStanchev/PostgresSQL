INSERT INTO items(name, quantity, price, description, brand_id, classification_id)
SELECT
	CONCAT('Item', '', r.created_at),
	r.customer_id,
	r.rating * 5,
	NULL,
	r.item_id,
	(SELECT
		MIN(item_id)
	FROM
		reviews)
FROM
 reviews AS r
ORDER BY
	r.item_id
LIMIT 10;


UPDATE
	reviews
SET
	rating = CASE
				WHEN item_id = customer_id THEN 10.0
				WHEN customer_id > item_id THEN 5.5
				ELSE rating
			END;


DELETE FROM customers
WHERE id NOT IN(
				SELECT
					customer_id
				FROM
					orders
);