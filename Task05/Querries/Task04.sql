SELECT c.category_id,c.name AS category_name,
    COUNT(p.product_id) AS product_count
FROM categories c
LEFT JOIN products p
ON c.name = p.category
GROUP BY c.category_id, c.name
ORDER BY c.name;
