SELECT
    c.first_name,
    c.last_name,
    COUNT(r.rental_id) 
FROM
    customer c
INNER JOIN rental r ON
    c.customer_id = r.customer_id
INNER JOIN inventory i ON
    r.inventory_id = i.inventory_id
INNER JOIN film f ON f.film_id = i.film_id 
WHERE COUNT(r.rental_id)  = f.rental_rate
LIMIT 3;