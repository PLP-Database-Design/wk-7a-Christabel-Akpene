
-- Created the ecommerce database for this assignment.

CREATE DATABASE ecommerce;
USE ecommerce;

-- Question 1


CREATE TABLE customerDetails(
order_id int primary key,
customer_name varchar(100)
);

CREATE TABLE productDetails(
product_id int primary key auto_increment,
product_name varchar(100),
customer_id int,
FOREIGN KEY(customer_id) REFERENCES customerDetails(order_id)
);


INSERT INTO customerDetails(order_id, customer_name)
VALUES(101, "John Doe"),
(102, "Jane Smith"),
(103, "Emily Clark");

INSERT INTO productDetails(product_name, customer_id)
VALUES("Laptop", 101),
("Mouse", 101),
("Tablet", 102),
("Keyboard", 102),
("Mouse", 102),
("Phone", 103);



-- Question 2

CREATE TABLE customers(
customer_id int primary key auto_increment,
customer_name varchar(100)
);

CREATE TABLE orders(
order_id int primary key,
customer_id int,
foreign key (customer_id) references customers(customer_id)
);

CREATE TABLE orderDetails(
id int primary key auto_increment,
product varchar(100),
quantity int,
order_id int,
foreign key (order_id) references orders(order_id)
);

INSERT INTO customers (customer_name) 
VALUES ("John Doe"),
("Jane Smith"),
("Emily Clark");


INSERT INTO orders (order_id, customer_id)
VALUES (101, 1), 
(102, 2),  
(103, 3);  

INSERT INTO orderDetails (product, quantity, order_id) 
VALUES ("Laptop", 2, 101),
("Mouse", 1, 101),
("Tablet", 3, 102),
("Keyboard", 1, 102),
("Mouse", 2, 102),
("Phone", 1, 103);

