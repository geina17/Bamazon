create database bamazon;
use bamazon;

create table products(
	item_id integer auto_increment primary key not null,
	product_name VARCHAR(45) NULL,
	dept_name VARCHAR(45) NULL,
	price VARCHAR(45) NULL,
	stock_quant integer
);

select * from bamazon.products;
insert INTO products (item_id, product_name, dept_name,price,stock_quant) values('B0749WVS7J','Amazon echo','Electronics','$100','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B01DFKC2SO','Amazon dot', 'Electronics','$30','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B00FLYWNYQ','Instant Pot 7-in-1 Multi-Functional Pressure Cooker','Houshold','$70','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B00OJE1SG8','TechMatte MagGrip','Car Accessories','$8','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B01J94T4R2','Fire HD Tablet','Electronics','$80','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B0143RT8OY','SanDisk 32GB Ultra Class Memory Card','Electronics','$14','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B01N5UVZBP','Sony XB950B1 Extra Bass Wireless Headphones','Electronics','$148','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B06WGQV78R','iRobot Roomba 652','Houshold','$375','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B01N6DC2ZE','Anker Bluetooth SoundBuds Headphones','Electronics','$23','');
INSERT INTO products (item_id, product_name, dept_name,price,stock_quant) values('B00OQWXMNU','Kindle Paperwhite','Electronics','$190','');