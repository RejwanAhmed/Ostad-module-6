SELECT c.name, SUM(oi.price * oi.quantity) total_revenue
FROM order_items oi 
INNER JOIN products p 
ON oi.product_id = p.product_id
RIGHT JOIN categories c
ON p.category_id = c.category_id
GROUP BY c.category_id
ORDER BY total_revenue DESC