SELECT COUNT(*) AS total_registros
FROM sales;

SELECT SUM(sales) AS receita_total
FROM sales;

SELECT SUM(profit) AS lucro_total
FROM sales;

SELECT category, SUM(sales) AS receita
FROM sales
GROUP BY category
ORDER BY receita DESC;

SELECT product_name, SUM(sales) AS receita
FROM sales
GROUP BY product_name
ORDER BY receita DESC
LIMIT 10;

SELECT region, SUM(sales) AS receita
FROM sales
GROUP BY region
ORDER BY receita DESC;

SELECT customer_name, SUM(sales) AS total_gasto
FROM sales
GROUP BY customer_name
ORDER BY total_gasto DESC
LIMIT 10;

SELECT DATE_FORMAT(order_date, '%Y-%m') AS mes, SUM(sales) AS receita
FROM sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY mes;

SELECT category,
       SUM(profit) AS lucro_total,
       SUM(sales) AS receita_total,
       ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS margem_percentual
FROM sales
GROUP BY category
ORDER BY lucro_total DESC;
