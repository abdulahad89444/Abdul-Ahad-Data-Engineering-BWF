SELECT p.product_id,p.name AS product_name,s.name AS supplier_name,
	s.phone AS supplier_phone,c.name AS category_name,p.price,
	p.stock_avaialable,p.status,p.product_createtimestamp

FROM products p
JOIN suppliers s ON p.supplier_id = s.supplier_id
JOIN categories c ON p.category = c.name
ORDER BY p.name;
