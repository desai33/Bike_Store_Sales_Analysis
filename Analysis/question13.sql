SELECT 
    YEAR(order_date) AS order_year,
    COUNT(DISTINCT customer_id) AS total_customers
FROM 
    bikestore.orders
GROUP BY 
    order_year
ORDER BY 
    order_year;
