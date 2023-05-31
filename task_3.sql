-- 3. Создайте таблицу “orders”, заполните ее значениями.Выберите все заказы. 
-- В зависимости от поля order_status выведите столбец full_order_status:
-- OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED - «Order is cancelled»


USE HW_2;

CREATE TABLE orders (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	employee_id VARCHAR,
	amount FLOAT,
	order_status VARCHAR(20) NOT NULL
);

INSERT orders(employee_id, amount, order_status) 
VALUES 	
    ('e03', 15, 'OPEN'),
    ('e01', 25.50, 'OPEN'),
    ('e05', 100.70, 'CLOSED'),
    ('e02', 22.18, 'OPEN'),
    ('e04', 9.50, 'CANCELLED');

SELECT * FROM orders;	

SELECT *,
CASE 
	WHEN order_status = 'OPEN' THEN 'Order is in open state'
	WHEN order_status = 'CLOSED' THEN 'Order is closed'
	WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
	ELSE 'NONE'
END AS full_order_status
FROM orders;