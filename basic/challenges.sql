-- General #6
SELECT COUNT(*)
FROM film
WHERE title LIKE '%Truman%';
-- General #5
SELECT COUNT(*)
FROM film
WHERE rating = 'R'
    AND replacement_cost BETWEEN 5 AND 15;
-- General #4
SELECT DISTINCT district
FROM address
ORDER BY district;
-- General #3
SELECT COUNT(DISTINCT district)
FROM address;
-- General #2
SELECT COUNT(*)
FROM actor
WHERE first_name LIKE 'P%';
-- General #1
SELECT COUNT(*)
FROM payment
WHERE amount > 5;
-- ORDER BY & LIMIT Bonus
SELECT COUNT(*)
FROM film
WHERE length <= 50;
-- ORDER BY & LIMIT #2
SELECT title,
    length
FROM film
ORDER BY length,
    title
LIMIT 9;
-- ORDER BY & LIMIT #1
SELECT customer_id
FROM payment
ORDER BY payment_date
LIMIT 10;
-- SELECT WHERE #3
SELECT phone
FROM address
WHERE address = '259 Ipoh Drive';
-- SELECT WHERE #2
SELECT description
FROM film
WHERE title = 'Outlaw Hanky';
-- SELECT WHERE #1
SELECT email
FROM customer
WHERE first_name = 'Nancy'
    AND last_name = 'Thomas';