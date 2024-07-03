COPY Items(item_id, order_id, product_id, amount, status, item_timestamp)
FROM 'G:\FELLOWSHIP\Data-Engineering-BWF\Task04\items.csv' 
DELIMITER ',' 
CSV HEADER; 
