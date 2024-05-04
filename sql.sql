--2
SELECT product_name, units_in_stock, 
CASE
	WHEN units_in_stock >= 100 THEN 'Too expensive'
	WHEN units_in_stock >= 50 AND units_in_stock < 100 THEN 'Average'
	WHEN units_in_stock < 50 THEN 'Low price'
END AS results
FROM products


--3
SELECT contact_name, order_id, 
CASE
	WHEN order_id IS NULL THEN 'No order'
	ELSE contact_name
END
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id


SELECT order_id
FROM orders
WHERE order_id IS NULL

--4
SELECT first_name, last_name, 
CASE 
	 WHEN title = 'Sales Representative' THEN 'Sales Stuff'
	 ELSE title
END AS results
FROM employees