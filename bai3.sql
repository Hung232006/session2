CREATE SCHEMA sales;
CREATE  TABLE sales.Customers(
	customer_id SERIAL PRIMARY KEY,
	fist_name VARCHAR(50)  NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email CHAR NOT NULL UNIQUE,
	phone INT
);
ALTER TABLE sales.Products drop column product_name;
CREATE TABLE sales.Products(
	product_id SERIAL PRIMARY KEY
	product_name SERIAL PRIMARY KEY,
	price DOUBLE PRECISION NOT NULL,
	stock_quantity INT NOT NULL
);
CREATE TABLE sales.Orders(
	order_id SERIAL PRIMARY KEY,
	customer_id INT,
	FOREIGN KEY (customer_id)
	REFERENCES sales.Customers(customer_id),
	order_date DATE NOT NULL
);
CREATE  TABLE sales.OrderItems(
	order_item_id SERIAL PRIMARY KEY,
	order_id INT,
	product_id INT,
	FOREIGN KEY (order_id)
	REFERENCES sales.Orders(order_id),
	FOREIGN KEY (product_id)
	REFERENCES sales.Products (product_id),
	quantity INT CHECK( quantity >=1)
);
ALTER TABLE sales.Products add column product_name VARCHAR(100) NOT NULL;
