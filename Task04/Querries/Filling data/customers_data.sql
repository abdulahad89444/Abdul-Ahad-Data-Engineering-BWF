COPY Customers(customer_id, name, phone, location, status)
FROM 'G:\FELLOWSHIP\Data-Engineering-BWF\Task04\customers.csv'
DELIMITER ','
CSV HEADER;