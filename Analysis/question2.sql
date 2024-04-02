#question 2: order totals
 SELECT orders.order_id,
           SUM(order_items.quantity * order_items.list_price * (1 - order_items.discount)) AS order_total
    FROM orders
    JOIN order_items ON orders.order_id = order_items.order_id
    GROUP BY orders.order_id
