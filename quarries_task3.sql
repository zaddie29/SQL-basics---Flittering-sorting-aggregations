USE task3_sql;

create table sales (
row_id INT,
order_id VARCHAR(50),
order_date VARCHAR(20),
ship_date VARCHAR(20),
ship_mode VARCHAR(100),
customer_id VARCHAR(50),
customer_name VARCHAR(50),
segment VARCHAR(50),
country VARCHAR(50),
city VARCHAR(50),
state VARCHAR(50),
postal_code INT,
regin VARCHAR(50),
product_id VARCHAR(50),
category VARCHAR(50),
sub_category VARCHAR(50),
product_name VARCHAR(500),
Sales DECIMAL,
quantity INT,
discount DECIMAL,
profit DECIMAL
);

DROP TABLE sales;

SELECT * FROM sales LIMIT 10;
SELECT COUNT(*) FROM sales;

SELECT * FROM sales
WHERE category = "technology";

SELECT * FROM sales
ORDER BY sales DESC;

SELECT category,
	SUM(sales) AS total_sales,
    AVG(profit) AS avg_profit,
    COUNT(*) AS total_orders
FROM sales
GROUP BY category;

SELECT category, SUM(sales) AS total_sales
from sales
GROUP BY category
HAVING SUM(sales)>100000;

SELECT * FROM sales
WHERE order_date BETWEEN " 01-01-2015 " AND "12-31-2015";

SELECT * FROM sales
WHERE customer_name LIKE "%an%";

SELECT product_name, SUM(sales) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
