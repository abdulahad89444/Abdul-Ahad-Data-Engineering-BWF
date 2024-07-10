SELECT s.supplier_id,s.name AS supplier_name,s.phone AS supplier_phone,
	c.name AS city_name,c.country AS country_name,p.product_id,p.name AS product_name,
	p.price,p.stock_avaialable,p.status,p.product_createtimestamp

FROM suppliers s
JOIN cities c ON s.location = c.name
JOIN products p ON s.supplier_id = p.supplier_id
ORDER BY s.name, p.name;
