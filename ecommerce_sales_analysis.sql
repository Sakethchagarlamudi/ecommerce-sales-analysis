create database Ecommerce_Data;
SELECT COUNT(*) AS total_orders
FROM ecommerce_sales;
SELECT SUM(revenue) AS total_revenue
FROM ecommerce_sales;
SELECT SUM(quantity) AS total_quantity
FROM ecommerce_sales;
SELECT 
    ROUND(SUM(revenue) / COUNT(order_id), 2) AS average_order_value
FROM ecommerce_sales;
SELECT
    product_category,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
ORDER BY total_revenue DESC;
SELECT
    region,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY region
ORDER BY total_revenue DESC;
SELECT
    payment_method,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;
SELECT
    customer_rating,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY customer_rating
ORDER BY customer_rating;
SELECT
    CASE
        WHEN customer_rating < 3 THEN 'Low'
        WHEN customer_rating < 4 THEN 'Average'
        WHEN customer_rating < 5 THEN 'Good'
        ELSE 'Excellent'
    END AS satisfaction_level,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(customer_rating), 2) AS average_rating
FROM ecommerce_sales
GROUP BY satisfaction_level
ORDER BY average_rating;
SELECT
    delivery_days,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(customer_rating), 2) AS average_rating,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY delivery_days
ORDER BY delivery_days;
SELECT
    discount,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(customer_rating), 2) AS average_rating
FROM ecommerce_sales
GROUP BY discount
ORDER BY discount;
SELECT
    order_id,
    order_date,
    customer_id,
    product_category,
    region,
    quantity,
    revenue
FROM ecommerce_sales
ORDER BY revenue DESC
LIMIT 5;
SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 5;
SELECT
    customer_id,
    ROUND(SUM(revenue), 2) AS customer_revenue,
    ROUND(
        SUM(revenue) * 100 /
        (SELECT SUM(revenue) FROM ecommerce_sales),
        2
    ) AS revenue_percentage
FROM ecommerce_sales
GROUP BY customer_id
ORDER BY customer_revenue DESC
LIMIT 10;
SELECT
    customer_id,
    ROUND(SUM(revenue), 2) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(revenue) DESC
    ) AS revenue_rank
FROM ecommerce_sales
GROUP BY customer_id
ORDER BY revenue_rank
LIMIT 10;
SELECT
    MIN(order_date) AS earliest_date,
    MAX(order_date) AS latest_date
FROM ecommerce_sales;
SELECT
    YEAR(order_date) AS order_year,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY YEAR(order_date)
ORDER BY order_year;

SELECT
    order_date,
    STR_TO_DATE(order_date, '%m/%d/%Y') AS converted_date
FROM ecommerce_sales
LIMIT 10;
SELECT 
    MIN(converted_date) AS earliest_date,
    MAX(converted_date) AS latest_date
FROM ecommerce_sales;

SELECT 
    order_date,
    STR_TO_DATE(order_date, '%m/%d/%Y') AS converted_date
FROM ecommerce_sales
WHERE STR_TO_DATE(order_date, '%m/%d/%Y') > '2026-08-28'
ORDER BY STR_TO_DATE(order_date, '%m/%d/%Y');
SELECT 
    YEAR(STR_TO_DATE(order_date, '%m/%d/%Y')) AS order_year,
    COUNT(*) AS total_orders,
    SUM(revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY YEAR(STR_TO_DATE(order_date, '%m/%d/%Y'))
ORDER BY order_year;
SELECT 
    ROUND(SUM(revenue) / COUNT(*), 2) AS average_order_value
FROM ecommerce_sales;
SELECT 
    product_category,
    COUNT(*) AS total_orders,
    SUM(revenue) AS total_revenue
FROM ecommerce_sales
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 10;
SELECT 
    product_category,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(revenue) / COUNT(*), 2) AS average_order_value
FROM ecommerce_sales
GROUP BY product_category
ORDER BY average_order_value DESC;
SELECT
    MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')) AS order_month,
    COUNT(*) AS total_orders,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ecommerce_sales
GROUP BY MONTH(STR_TO_DATE(order_date, '%m/%d/%Y'))
ORDER BY total_revenue DESC;