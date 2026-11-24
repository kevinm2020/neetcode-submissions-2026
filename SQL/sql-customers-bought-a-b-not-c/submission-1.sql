SELECT a.customer_id, a.customer_name
FROM customers a
LEFT JOIN orders b ON a.customer_id = b.customer_id
GROUP BY a.customer_id, a.customer_name
HAVING
    COUNT(*) FILTER (WHERE b.product_name = 'A') > 0 AND
    COUNT(*) FILTER (WHERE b.product_name = 'B') > 0 AND
    COUNT(*) FILTER (WHERE b.product_name = 'C') = 0
ORDER BY a.customer_name;
