-- Retail Sales Analytics | SQLite | Fictional portfolio dataset
PRAGMA foreign_keys = ON;
DROP VIEW IF EXISTS sale_details;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
CREATE TABLE products (product_id INTEGER PRIMARY KEY, product_name TEXT NOT NULL, category TEXT NOT NULL, price REAL NOT NULL, cost REAL NOT NULL);
CREATE TABLE customers (customer_id INTEGER PRIMARY KEY, customer_name TEXT NOT NULL, city TEXT NOT NULL);
CREATE TABLE sales (sale_id INTEGER PRIMARY KEY, product_id INTEGER NOT NULL REFERENCES products(product_id), customer_id INTEGER NOT NULL REFERENCES customers(customer_id), store TEXT NOT NULL, quantity INTEGER NOT NULL, sale_date TEXT NOT NULL);
INSERT INTO products VALUES
(1,'Sneakers','Footwear',150,80),(2,'Hoodie','Clothing',100,45),(3,'Backpack','Accessories',90,40),(4,'T-Shirt','Clothing',50,20),(5,'Running Shoes','Footwear',200,110);
INSERT INTO customers VALUES
(1,'Sarah','Sydney'),(2,'James','Melbourne'),(3,'Emma','Sydney'),(4,'Daniel','Brisbane'),(5,'Olivia','Perth');
INSERT INTO sales VALUES
(1,1,1,'Sydney',2,'2026-01-10'),(2,2,2,'Melbourne',3,'2026-01-15'),(3,3,3,'Sydney',1,'2026-02-05'),(4,4,4,'Brisbane',5,'2026-02-12'),(5,5,5,'Melbourne',2,'2026-03-03'),(6,1,3,'Sydney',1,'2026-03-09'),(7,5,1,'Sydney',3,'2026-04-14'),(8,2,4,'Brisbane',2,'2026-04-20'),(9,3,2,'Melbourne',4,'2026-05-08'),(10,4,5,'Sydney',3,'2026-05-21');
CREATE VIEW sale_details AS SELECT s.sale_id,s.sale_date,s.store,c.customer_name,c.city,p.product_name,p.category,s.quantity,p.price,p.cost,s.quantity*p.price AS revenue,s.quantity*(p.price-p.cost) AS gross_profit FROM sales s JOIN products p ON s.product_id=p.product_id JOIN customers c ON s.customer_id=c.customer_id;
