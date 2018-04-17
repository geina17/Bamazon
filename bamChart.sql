create database BZ;
use BZ;

create table products(
	id_item integer (15) not null ,
	product_name VARCHAR(50) not NULL,
	dept_name VARCHAR(45) not NULL,
	price integer (45) not NULL,
	stock_quant integer (100) not null,
    primary key (id_item)
);

select * from BZ.products;

INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(1,'Amazon dot', 'Electronics',30,88);
INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(7,'Instant Pot 7-in-1 Multi-Functional Pressure Cooker','Houshold',70,100);
INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(8,'TechMatte MagGrip','Car Accessories',8,100);
INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(2,'Fire HD Tablet','Electronics',80,70);
INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(4,'SanDisk 32GB Ultra Class Memory Card','Electronics',14,50);
INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(5,'Sony XB950B1 Extra Bass Wireless Headphones','Electronics',148,60);
INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(6,'iRobot Roomba 652','Houshold',375,10);
INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(9,'Anker Bluetooth SoundBuds Headphones','Electronics',23,99);
INSERT INTO products (id_item, product_name, dept_name,price,stock_quant) values(3,'Kindle Paperwhite','Electronics',190,40);