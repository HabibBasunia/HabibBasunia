SELECT c.name, sum(a.quantity*a.unit_price) Total_Amount  FROM order_items a 
INNER JOIN products b ON a.product_id=b.product_id 
INNER JOIN categories c ON b.category_id=c.category_id 
group by c.name order by sum(a.quantity*a.unit_price) ASC