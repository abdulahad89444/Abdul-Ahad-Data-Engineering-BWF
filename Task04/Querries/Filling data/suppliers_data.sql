COPY Suppliers(supplier_id, name, phone, location, status, category)
FROM 'G:\FELLOWSHIP\Data-Engineering-BWF\Task04\suppliers.csv'
DELIMITER ','
CSV HEADER;