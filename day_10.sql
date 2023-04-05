-- section13
-- inner joins

use relations;

SELECT 
    *
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id;
 
SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id;
 
-- The order doesn't matter here:
SELECT 
    *
FROM
    orders
        JOIN
    customers ON customers.id = orders.customer_id;


SELECT 
    first_name, last_name, SUM(amount) AS total
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id
GROUP BY first_name , last_name
ORDER BY total;