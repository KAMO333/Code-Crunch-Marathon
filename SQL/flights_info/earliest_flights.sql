DROP TABLE IF EXISTS suspects_flights;

CREATE TEMPORARY TABLE suspects_flights AS
SELECT *
FROM flights
WHERE day = 29
AND month = 7
AND year = 2023
AND hour < 10;

SELECT * FROM suspects_flights
