SELECT order_id,customer_id, total_amount, 
	RANK() OVER (PARTITION BY customer_id ORDER BY total_amount DESC) AS order_rank
FROM orders;
