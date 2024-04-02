#question 3: average order value
SELECT 
    YEAR(o.order_date) AS order_year,
    AVG(oi.list_price * oi.quantity * (1 - oi.discount)) AS avg_order_value
FROM 
    bikestore.orders o
JOIN 
    bikestore.order_items oi ON o.order_id = oi.order_id
GROUP BY 
    YEAR(o.order_date)
ORDER BY 
    order_year;