SELECT p.name product_name, o.total_amount, oi.quantity 
FROM order_items oi 
INNER JOIN orders o 
ON oi.order_id = o.order_id 
INNER JOIN products p 
ON oi.product_id = p.product_id 
ORDER BY o.order_id ASC