SELECT b.name, sum(a.total_amount) Total_Amount  FROM orders a 
INNER JOIN customers b ON a.customer_id=b.customer_id 
group by b.customer_id order by sum(a.total_amount) DESC LIMIT 5;