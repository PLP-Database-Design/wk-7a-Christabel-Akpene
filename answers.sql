
-- Created the ecommerce database for this assignment.

CREATE DATABASE ecommerce;
USE ecommerce;

-- Question 1


CREATE TABLE ProductDetail (
orderID INT,
customerName VARCHAR(100),
products VARCHAR(100)
);

INSERT INTO ProductDetail(orderID, customerName, products)
VALUES
(101, "John Doe", "Laptop"),
(101, "John Doe", "Mouse"),
(102, "Jane Smith", "Tablet"),
(102, "Jane Smith", "Keyboard"),
(102, "Jane Smith", "Mouse"),
(103, "Emily Clark", "Phone")
;




-- Question 2

CREATE TABLE orders(
orderID INT PRIMARY KEY,
customerName VARCHAR(100)
);


INSERT INTO orders (orderID, customerName)
VALUES
(101, "John Doe"),
(102, "Jane Smith"),
(103, "Emily Clark");


CREATE TABLE product(
product_id INT primary key,
productName varchar(100),
quantity INT,
order_id INT,
foreign key(order_id) references orders(orderID)
);

insert into product(product_id,productName,quantity,order_id)
values 
(1, "laptop", 2, 101),
(2, "Mouse", 1, 101),
(3, "Tablet", 3, 102),
(4, "Keyboard", 2, 102),
(5, "Mouse", 1, 102),
(6, "Phone", 1, 103)
;


