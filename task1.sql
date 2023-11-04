SELECT c.*, COUNT(o.order_id) total_number_of_orders 
FROM customers c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id 
GROUP BY c.customer_id 
ORDER BY total_number_of_orders DESC