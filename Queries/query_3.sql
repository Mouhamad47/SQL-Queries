SELECT
    c.country
FROM
    country c,
    city ci,
    customer cu,
    address a
WHERE
    ci.country_id = c.country_id AND cu.address_id = a.address_id AND a.city_id = c.country_id
LIMIT 3;