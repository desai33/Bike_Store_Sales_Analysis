#question 1: otal revenue generated

SELECT SUM(order_items.quantity * order_items.list_price * (1 - order_items.discount)) AS total_revenue
FROM orders
JOIN order_items ON orders.order_id = order_items.order_id;