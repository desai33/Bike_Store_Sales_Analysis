#question 5:Number of customers in each category (e.g., children bicycles, comfort bicycles).
SELECT c.category_name, COUNT(DISTINCT o.customer_id) AS customer_count
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY customer_count DESC;