SELECT c.customer_id,c.name AS customer_name,c.phone AS customer_phone,o.order_id,
		o.order_timestamp,i.item_id,i.product_id AS product_name,i.amount

FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
JOIN items i ON o.order_id = i.order_id
JOIN products p 
ON i.product_id = p.product_id
ORDER BY customer_name, order_timestamp;
