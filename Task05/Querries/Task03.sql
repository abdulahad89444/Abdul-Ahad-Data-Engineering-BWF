SELECT s.supplier_id, s.name AS supplier_name, AVG(p.price) AS average_price
FROM suppliers s
JOIN products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.name;
