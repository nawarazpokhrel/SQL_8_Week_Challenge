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