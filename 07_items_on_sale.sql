SELECT
    i.name,
    UPPER(b.name) || '/' || LOWER(c.name) AS promotion,
    'On sale: ' || COALESCE(i.description, '') AS description,
    i.quantity
FROM items AS i
JOIN brands AS b
    ON i.brand_id = b.id
JOIN classifications AS c
    ON i.classification_id = c.id
WHERE NOT EXISTS (
    SELECT 1
    FROM orders_items AS oi
    WHERE oi.item_id = i.id
)
ORDER BY i.quantity DESC, i.name ASC;
