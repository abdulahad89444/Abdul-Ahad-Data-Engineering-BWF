SELECT i.order_id, i.item_id, i.amount, o.total_amount, 
		ROUND((i.amount / o.total_amount) * 100, 2) AS percentage_contribution
FROM items i
JOIN orders o
ON i.order_id = o.order_id
