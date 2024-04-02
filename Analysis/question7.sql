
#question 7: states with highest orders 

SELECT 
    c.state,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM 
    orders o
JOIN 
    customers c ON o.customer_id = c.customer_id
GROUP BY 
    c.state
ORDER BY 
    total_orders DESC;