-- HAVING #2
SELECT customer_id,
    SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;
-- Having #1
SELECT customer_id,
    COUNT(*)
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;
-- Group By #3
SELECT customer_id,
    SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
-- Group By #2
SELECT rating,
    ROUND(AVG(replacement_cost), 2)
FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost) DESC;
-- Group By #1
SELECT staff_id,
    COUNT(*)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC;