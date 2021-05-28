SELECT s.customer_id, sum(m.price) FROM sales s 
INner JOin menu m 
on  m.product_id = s.product_id 
Inner JOin menu 
ON menu.product_id = s.product_id 
GROUP BY s.customer_id 
ORDER BY s.customer_id;

-- Op
"customer_id"	"sum"
"A"	            76
"B"	            74
"C"	            36



SELECT customer_id, COUNT(DISTINCT order_date) as "DAYS VISITED" from sales GROUP BY customer_id;

"customer_id"	"DAYS VISITED"
"A"	4
"B"	6
"C"	2



4.What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT m.product_name,count (*)  FROM menu m Inner join sales s On s.product_id = m.product_id Group BY m.product_name order by count (*) desc limit 1;

"product_name"	"count"
"ramen"	           8