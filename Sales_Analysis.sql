SELECT SUM(sales_amount) AS total_sales
FROM sales
WHERE sale_date BETWEEN 'start_date' AND 'end_date';
SELECT 
    EXTRACT(MONTH FROM sale_date) AS month,
    EXTRACT(YEAR FROM sale_date) AS year,
    SUM(sales_amount) AS monthly_sales
FROM sales
GROUP BY year, month
ORDER BY year, month;
SELECT product_id, product_name, SUM(quantity_sold) AS total_quantity_sold
FROM sales
GROUP BY product_id, product_name
ORDER BY total_quantity_sold DESC
LIMIT N;
SELECT region, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region;
SELECT customer_name, sale_date, product_name, sales_amount
FROM sales
WHERE customer_id = 'customer_id'
ORDER BY sale_date;
SELECT AVG(sales_amount) AS average_order_value
FROM sales
WHERE sale_date BETWEEN 'start_date' AND 'end_date';
SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY year
ORDER BY year;
SELECT salesperson_name, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY salesperson_name;
