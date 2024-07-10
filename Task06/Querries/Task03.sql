SELECT o.order_id,o.order_timestamp,o.total_amount,i.item_id,p.name AS product_name,i.amount
FROM orders o
JOIN items i ON o.order_id = i.order_id
JOIN products p ON i.product_id = p.product_id
ORDER BY o.order_timestamp, o.order_id, i.item_id;
