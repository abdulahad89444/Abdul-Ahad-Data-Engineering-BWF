SELECT c.customer_id, c.name, c.phone, SUM(o.total_amount)AS total_amount_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
