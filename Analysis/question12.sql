#question 12:Top-selling products and revenue generated:

SELECT 
    p.product_id AS product_id,
    p.product_name AS product_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * (oi.list_price - (oi.list_price * oi.discount))) AS total_revenue
FROM 
    order_items oi
JOIN 
    products p ON oi.product_id = p.product_id
GROUP BY 
    p.product_id, p.product_name
ORDER BY 
    total_units_sold DESC;
