COPY Products(product_id, name, supplier_id, category, price, stock_avaialable, status, product_createtimestamp)
FROM 'G:\FELLOWSHIP\Data-Engineering-BWF\Task04\products.csv'
DELIMITER ','
CSV HEADER;