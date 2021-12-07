-- HAVING
SELECT store_id,
    COUNT(*)
FROM customer
GROUP BY store_id
HAVING COUNT(*) > 300;
SELECT customer_id,
    SUM(amount)
FROM payment
WHERE customer_id NOT IN(184, 87, 477)
GROUP BY customer_id
HAVING SUM(amount) > 100 -- Group by date
SELECT DATE(payment_date),
    SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC;
-- Group by multi columns
SELECT staff_id,
    customer_id,
    SUM(amount) amount_sum
FROM payment
GROUP BY customer_id,
    staff_id
ORDER BY staff_id,
    customer_id;
-- Group By and Order By
SELECT customer_id,
    COUNT(*) as transaction_amount
FROM payment
GROUP BY customer_id
ORDER BY COUNT(*) DESC;
SELECT customer_id,
    SUM(amount) as amount_sum
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;
-- Aggregate functions
SELECT MAX(replacement_cost)
FROM film;
SELECT MIN(replacement_cost)
FROM film;
SELECT MIN(replacement_cost),
    MAX(replacement_cost)
FROM film;
SELECT AVG(replacement_cost)
FROM film;
SELECT ROUND(AVG(replacement_cost), 4)
FROM film;
SELECT SUM(replacement_cost)
FROM film;