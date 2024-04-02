#question 4:sales trend
SELECT DATE_FORMAT(orders.order_date, '%Y-%m') AS order_month,
       SUM(order_items.quantity * order_items.list_price * (1 - order_items.discount)) AS monthly_sales
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id
GROUP BY order_month
ORDER BY order_month;