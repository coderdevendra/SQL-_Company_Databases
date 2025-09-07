CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);
select*from products;

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);




-- Q.1 Total Quantity Available of all products
SELECT
	SUM(QUANTITY) AS TOTAL_QUANTITY
FROM
	PRODUCTS;


-- Q.2 total quantity find of all products
-- WHERE category='Electronics' AND price > 20000 ;

select sum(quantity) as quantity_of_electronics
from products
where category='Electronics' AND price > 20000 ;


select*from products;

--Q.3 Total number of products 

select count(*) as total_products
from products;

-- Q.4 Total number of products count with condition.

select count(*) as total_products
from products
where product_name like '%phone%';

-- Q.5 find average of products table.

select avg(price) as average_price
from products;


-- Q.6 average price with condition.
select avg(price) as average_products
from products
where category='Accessories' or added_date > '2024-02-01';


select*from products;


--Q.7  Maximum and Minimum price

SELECT MAX(price) AS MAX_PRICE,
		MIN(price) AS MIN_PRICE
FROM products;

select*from products;

--Q.8 Get all the categories in Uppercase

SELECT UPPER(category) AS Catergory_Capital
FROM products;

--Q.9 Get all the categories in Lowercase

SELECT LOWER(category) AS Catergory_Capital
FROM products;


--Q.10 Join Product_name adn category text with hypen.

SELECT CONCAT(product_name,'-',category) As product_details
FROM products;


--Q.11 Extract the first 5 characters from product_name

SELECT SUBSTRING(product_name, 1,5) AS short_name
FROM products;


--Q.12 Count length

SELECT product_name, LENGTH(product_name) AS COUNT_OF_CHAR
FROM products;



--Q.13 Remove leading and trailing spaces from string
 
 SELECT LENGTH(TRIM('  Monitor    ')) AS Trimmed_Text;
 
 SELECT LENGTH('  Monitor    ') AS Trimmed_Text;


--Q.14 Replace the word "phone" with "device" in product names

SELECT REPLACE(product_name, 'phone','device') AS updated
FROM products;


--Q.15 Get the first 7 characters from category

SELECT left(category, 7) AS Catergory_Capital
FROM products;









