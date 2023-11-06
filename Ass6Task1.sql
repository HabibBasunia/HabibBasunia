SELECT a.*, COUNT(b.order_id) NoOfOrder FROM customers a INNER JOIN orders b 
ON a.customer_id=b.customer_id group by b.customer_id order by COUNT(b.order_id) DESC;