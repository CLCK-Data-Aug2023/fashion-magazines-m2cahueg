SELECT 
	customer_name AS 'Customer', printf('$%s.00', SUM(price_per_month * subscription_length)) AS 'Amount Due'
FROM 
	orders AS o
JOIN 
	customers AS c ON o.customer_id = c.customer_id
JOIN 
	subscriptions AS s ON o.subscription_id = s.subscription_id
Where 
	o.order_status = 'unpaid'
	AND
	s.description = 'Fashion Magazine'
Group By customer_name
	;

