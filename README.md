# Retail Sales Analysis Using SQL

## 1. Project overview

This project uses SQL to analyse a simulated retail sales dataset and examine sales performance, customer spending and product profitability.

The analysis identifies sales patterns across products, stores and customers to support business decisions about inventory, pricing and sales performance.

## 2. Problem statement

A retail company needs to understand which products generate the most revenue, which stores perform well and which customers contribute the most sales.

Without analysing transaction data, the company may struggle to identify sales trends, allocate inventory effectively and make informed business decisions.

This project uses SQL to investigate retail sales performance and identify opportunities to improve profitability.

## 3. Project objectives

The project aims to answer five business questions:

1. Which products generate the highest revenue?
2. Which stores contribute the most revenue?
3. Who are the top five customers by spending?
4. Which product categories generate the highest gross profit?
5. How does monthly revenue change over time?

## 4. Tools and technologies

- **SQLite:** Database management and SQL queries.
- **DB Browser for SQLite:** Database creation and query execution.
- **SQL:** Data retrieval, aggregation and analysis.
- **CSV:** Exporting and storing analysis results.

## 5. Dataset

The project uses a fictional retail sales dataset created for educational purposes.

The dataset includes product information, customer transactions, store locations, quantities, sales dates, revenue and gross profit.

The sample data is used to demonstrate SQL analysis techniques and does not represent actual company performance.

## 6. SQL techniques used

- `SELECT` to retrieve data.
- `GROUP BY` to aggregate sales information.
- `SUM()` to calculate total revenue and gross profit.
- `ORDER BY` to rank products, stores and customers.
- `LIMIT` to identify the top five customers.
- Date functions to analyse monthly revenue.

## 7. Sales analysis

### Revenue by product

This query calculates total revenue for each product and sorts the results from highest to lowest.

```sql
SELECT
    product_name,
    ROUND(SUM(revenue), 2) AS revenue
FROM sale_details
GROUP BY product_name
ORDER BY revenue DESC;
```

### Revenue by store

This analysis compares revenue across retail locations to identify differences in store performance.

### Top five customers

This analysis ranks customers by their total spending to identify those who contribute the most revenue.

### Gross profit by category

This analysis calculates gross profit across product categories before overheads and other operating expenses.

### Monthly revenue

This analysis groups sales by month to investigate changes in revenue over time.

## 8. Business insights

The SQL queries are designed to identify:

- Products and categories that contribute the most revenue and gross profit.
- Differences in sales performance between stores.
- Customers with the highest total spending.
- Monthly changes in sales that may require further investigation.

These findings can inform inventory planning, sales strategies and future business analysis.

## 9. Project files

| File | Description |
|---|---|
| `retail_sales_project.sql` | SQL script for creating the project database |
| `analysis_queries.sql` | Five SQL queries used for the analysis |
| `retail_sales.db` | SQLite database, if uploaded |
| `Results/` | CSV files containing the query results |

## 10. Skills demonstrated

This project demonstrates SQL querying, data aggregation, database analysis and the ability to translate business questions into analytical tasks.

It also provides experience documenting an end-to-end SQL project using GitHub.
