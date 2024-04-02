
#question 5:Number of orders in each category (e.g., children bicycles, comfort bicycles).
SELECT c.category_name AS category_name, COUNT(*) AS order_count
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY order_count DESC;