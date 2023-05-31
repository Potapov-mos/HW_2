-- Используя операторы языка SQL, создайте табличку “sales”. 
-- Заполните ее данными

CREATE DATABASE HW_2;
USE HW_2;

CREATE TABLE sales (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	order_date DATE NOT NULL,
	order_cnt INT NOT NULL
);

INSERT sales(order_date, order_cnt) 
VALUES 	
  ('2022-01-01', 156), 
  ('2022-01-02', 180), 
  ('2022-01-03', 21), 
  ('2022-01-04', 124), 
  ('2022-01-05', 341);
				
SELECT * FROM sales;


