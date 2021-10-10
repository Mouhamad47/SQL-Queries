(
    SELECT
        customer_id AS id,
        first_name,
        last_name
    FROM
        customer
    WHERE
        first_name =(
        SELECT
            first_name
        FROM
            actor
        WHERE
            actor_id = 8
    )
)
UNION ALL
    (
    SELECT
        actor_id AS id,
        first_name,
        last_name
    FROM
        actor
    WHERE
        actor_id <> 8 AND first_name =(
        SELECT
            first_name
        FROM
            actor
        WHERE
            actor_id = 8
    )
)