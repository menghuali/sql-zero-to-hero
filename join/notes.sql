-- AS
SELECT COUNT(*) AS num_transactions
FROM payment;
SELECT customer_id,
    SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id;
-- INNER JOIN
SELECT payment_id,
    payment.customer_id,
    first_name,
    last_name
FROM payment
    INNER JOIN customer ON payment.customer_id = customer.customer_id;
-- FULL OUTER JOIN
SELECT *
FROM customer
    FULL OUTER JOIN payment ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL
    OR payment.payment_id IS NULL;
-- LEFT OUTER JOIN (LEFT JOIN)
SELECT film.film_id,
    title,
    inventory_id,
    store_id
FROM film
    LEFT JOIN inventory ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;
-- RIGHT JOIN
SELECT film.film_id,
    title,
    inventory_id,
    store_id
FROM inventory
    RIGHT JOIN film ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;