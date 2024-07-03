CREATE TABLE Categories (
    category_id UUID PRIMARY KEY,
    name VARCHAR(255),
    status VARCHAR(50),
    description TEXT
);

CREATE TABLE Cities (
    city_id UUID PRIMARY KEY,
    name VARCHAR(255),
    province VARCHAR(255),
    country VARCHAR(255),
    status VARCHAR(50)
);


CREATE TABLE Suppliers (
    supplier_id UUID PRIMARY KEY,
    name VARCHAR(255),
    phone VARCHAR(50),
    location VARCHAR(255),
    status VARCHAR(50),
    category VARCHAR(255)
);


CREATE TABLE Customers (
    customer_id UUID PRIMARY KEY,
    name VARCHAR(255),
    phone VARCHAR(50),
    location VARCHAR(255),
    status VARCHAR(50)
);


CREATE TABLE Products (
    product_id UUID PRIMARY KEY,
    name VARCHAR(255),
    supplier_id UUID REFERENCES Suppliers(supplier_id),
    category VARCHAR(255),
    price NUMERIC,
    stock_avaialable INT,
    status VARCHAR(50),
    product_createtimestamp TIMESTAMP
);


CREATE TABLE Orders (
    order_id UUID PRIMARY KEY,
    customer_id UUID REFERENCES Customers(customer_id),
    status VARCHAR(50),
    order_timestamp TIMESTAMP,
    total_amount NUMERIC
);


CREATE TABLE Items (
    item_id UUID PRIMARY KEY,
    product_id UUID REFERENCES Products(product_id),
    order_id UUID REFERENCES Orders(order_id),
    amount NUMERIC,
    status VARCHAR(50),
    item_timestamp TIMESTAMP
);
