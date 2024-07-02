
-- EJERCICIOS DEL PAIR-PROGRAMMING
--
SELECT employee_id, last_name, first_name
	FROM employees;

-- 5. conociendo los productos mas baratos
SELECT product_name, unit_price
	FROM products
    WHERE unit_price BETWEEN 0 AND 5;

-- 6. conociendo los productos que no tienen precio
SELECT product_name
	FROM products
    WHERE unit_price IS NULL;

-- 7. productos con precio menor a 15 solo id menor que 20
SELECT product_id, product_name, unit_price
	FROM products
    WHERE unit_price < 15 AND product_id < 20;