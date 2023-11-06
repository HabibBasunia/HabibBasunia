SELECT a.order_id,b.name, a.quantity,(a.quantity*a.unit_price) Total_Amount  FROM order_items a 
INNER JOIN 
products b ON a.product_id=b.product_id order by a.order_id ASC;