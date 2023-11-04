SELECT c.name customer_name, SUM(o.total_amount) highest_total_amount
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY o.customer_id
ORDER BY highest_total_amount DESC
LIMIT 5