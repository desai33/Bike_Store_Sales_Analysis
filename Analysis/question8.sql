#question 8: turnover of inventory

SELECT 
    p.product_name AS product_name,
    p.product_id AS product_id,
    s.total_inventory,
    SUM(oi.quantity) AS total_ordered_quantity,
    SUM(oi.quantity) / s.total_inventory AS turnover_rate
FROM (
    SELECT 
        product_id,
        SUM(quantity) AS total_inventory
    FROM 
        stocks
    GROUP BY 
        product_id
) s
JOIN 
    products p ON s.product_id = p.product_id
LEFT JOIN 
    order_items oi ON s.product_id = oi.product_id
GROUP BY 
    p.product_name, p.product_id ,  s.total_inventory
ORDER BY 
    turnover_rate DESC;