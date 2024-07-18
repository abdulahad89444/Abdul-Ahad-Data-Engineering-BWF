CREATE TABLE orders (
    item_id VARCHAR(255),
    order_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    amount FLOAT,
    status VARCHAR(255),
    item_timestamp VARCHAR(255),
    location VARCHAR(255),
    customer_name VARCHAR(255),
    customer_phone VARCHAR(255),
    country VARCHAR(255),
    description TEXT
);

