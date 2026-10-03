-- 1. Revenue by product
SELECT product_name, ROUND(SUM(revenue),2) AS revenue FROM sale_details GROUP BY product_name ORDER BY revenue DESC;
-- 2. Revenue by store
SELECT store, ROUND(SUM(revenue),2) AS revenue FROM sale_details GROUP BY store ORDER BY revenue DESC;
-- 3. Top five customers
SELECT customer_name, ROUND(SUM(revenue),2) AS total_spent FROM sale_details GROUP BY customer_name ORDER BY total_spent DESC LIMIT 5;
-- 4. Gross profit by category (before overhead and other expenses)
SELECT category, ROUND(SUM(gross_profit),2) AS gross_profit FROM sale_details GROUP BY category ORDER BY gross_profit DESC;
-- 5. Monthly revenue
SELECT substr(sale_date,1,7) AS month, ROUND(SUM(revenue),2) AS revenue FROM sale_details GROUP BY month ORDER BY month;
