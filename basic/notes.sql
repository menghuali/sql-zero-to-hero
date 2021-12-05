SELECT *
FROM customer
WHERE first_name LIKE 'A%'
    AND last_name NOT LIKE 'B%'
ORDER BY last_name;
-- IN
SELECT *
FROM payment
WHERE amount NOT IN(2.99, 3.98, 3.99);
SELECT *
FROM payment
WHERE amount IN(0.99, 1.98, 1.99);
-- BETWEEN
SELECT *
FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';
SELECT COUNT(*)
FROM payment
WHERE amount NOT BETWEEN 5 AND 9;
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 8 AND 9;
-- LIMIT
SELECT *
FROM payment
WHERE amount > 3
ORDER BY payment_date DESC
LIMIT 10;
-- ORDER BY
SELECT store_id,
    first_name,
    last_name
FROM customer
ORDER BY store_id DESC,
    first_name ASC;
-- SELECT WHERE
SELECT *
FROM customer
WHERE first_name = 'Jared';
SELECT COUNT(DISTINCT title)
FROM film
WHERE rental_rate > 4
    AND replacement_cost > 19.99
    AND (
        rating = 'R'
        OR rating = 'PG-13'
    )
    AND rental_duration != 7;
-- COUNT
SELECT COUNT(*)
FROM payment;
SELECT COUNT(DISTINCT customer_id)
FROM payment;
-- DISTINCT
SELECT DISTINCT rating
FROM film;