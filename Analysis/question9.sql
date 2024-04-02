#question 9: Out of stock

SELECT 
    p.product_name AS product_name,
    s.quantity AS current_inventory
FROM 
    stocks s
JOIN 
    products p ON s.product_id = p.product_id
WHERE 
    s.quantity <= 10
ORDER BY 
	s.quantity; 
