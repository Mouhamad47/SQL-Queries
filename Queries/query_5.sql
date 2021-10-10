SELECT
    a.first_name,
    a.last_name,
    f.release_year
FROM
    actor a
INNER JOIN film_actor fa ON
    a.actor_id = fa.actor_id
INNER JOIN film f ON
    f.film_id = fa.film_id
WHERE
    f.description LIKE "%Crocodile%" AND f.description LIKE "%Shark%"
ORDER BY
    (a.last_name)