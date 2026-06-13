CREATE OR REPLACE FUNCTION udf_classification_items_count(classification_name varchar(30))
RETURNS text
LANGUAGE plpgsql
AS $$
DECLARE
    items_count integer;
BEGIN
    SELECT COUNT(i.id)
    INTO items_count
    FROM classifications AS c
    JOIN items AS i
        ON c.id = i.classification_id
    WHERE c.name = classification_name;

    IF items_count = 0 THEN
        RETURN 'No items found.';
    END IF;

    RETURN FORMAT('Found %s items.', items_count);
END;
$$;
