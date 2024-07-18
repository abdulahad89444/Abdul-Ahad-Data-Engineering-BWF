-- Insert data into orders table from CSV file
COPY orders (item_id, order_id, product_id, amount, status, item_timestamp, location,
	customer_name, customer_phone, country, description)
FROM 'G:/FELLOWSHIP/Data-Engineering-BWF/Task07/modified_dataset.csv'
DELIMITER ','
CSV HEADER;
