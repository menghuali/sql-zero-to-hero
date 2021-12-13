-- 1
SELECT DISTINCT TO_CHAR(payment_date, 'MONTH')
FROM payment;
-- 2.1
SELECT COUNT(*)
FROM payment
WHERE TO_CHAR(payment_date, 'D') = '2';
-- 2.2 (alternative soluton of challenge #2)
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(
        DOW
        FROM payment_date
    ) = '1';