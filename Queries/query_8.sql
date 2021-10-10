SELECT
    c.customer_id,
    c.last_name,
    c.first_name,
    c.email,
    SUM(p.amount) "Total Rental",
    AVG(p.amount) "Average Rental"
FROM
    customer c
INNER JOIN rental r ON
    c.customer_id = r.customer_id
INNER JOIN payment p ON
    p.rental_id = r.rental_id AND p.customer_id = c.customer_id
GROUP BY
    YEAR(p.payment_date),
    MONTH(p.payment_date);