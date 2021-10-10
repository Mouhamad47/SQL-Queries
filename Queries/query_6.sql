SELECT c.name
    ,
    COUNT(fc.film_id) AS Number_of_films
FROM
    film_category fc
JOIN category c USING(category_id)
GROUP BY
    fc.category_id
HAVING
    Number_of_films > 55 AND Number_of_films < 65
ORDER BY
    Number_of_films;