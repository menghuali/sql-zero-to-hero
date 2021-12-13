-- SHOW ALL;
-- SHOW TIMEZONE;
-- SELECT NOW();
-- SELECT TIMEOFDAY();
-- SELECT CURRENT_TIME;
-- SELECT CURRENT_DATE;
-- SELECT CURRENT_TIMESTAMP;
-- SELECT EXTRACT(
--         YEAR
--         FROM payment_date
--     ) AS payment_year
-- FROM payment
-- LIMIT 10;
-- SELECT EXTRACT(
--         MONTH
--         FROM payment_date
--     ) AS payment_month
-- FROM payment
-- LIMIT 10;
-- SELECT EXTRACT(
--         QUARTER
--         FROM payment_date
--     ) AS payment_month
-- FROM payment
-- LIMIT 10;
-- SELECT AGE(payment_date) AS payment_age FROM payment LIMIT 10;
SELECT TO_CHAR(payment_date, 'MONTH YYYY') FROM payment;
SELECT TO_CHAR(payment_date, 'mon/dd/YYYY') FROM payment;
SELECT TO_CHAR(payment_date, 'MM/dd/YYYY') FROM payment;
