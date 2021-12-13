-- 1
SELECT customer_id,
    first_name,
    last_name,
    email,
    district
FROM customer
    INNER JOIN address ON customer.address_id = address.address_id
WHERE district = 'California';
-- 2
SELECT fa.film_id,
    f.title,
    a.first_name,
    a.last_name
FROM film_actor fa
    INNER JOIN actor a ON a.actor_id = fa.actor_id
    INNER JOIN film f ON f.film_id = fa.film_id
WHERE a.first_name = 'Nick'
    and a.last_name = 'Wahlberg';