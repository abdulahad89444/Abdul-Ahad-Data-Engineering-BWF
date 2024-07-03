COPY Orders(order_id, customer_id, status, order_timestamp, total_amount)
FROM 'G:\FELLOWSHIP\Data-Engineering-BWF\Task04\orders.csv'
DELIMITER ','
CSV HEADER;