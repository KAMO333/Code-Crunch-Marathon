DROP TABLE IF EXISTS finding_airports;

CREATE TEMPORARY TABLE finding_airports AS
SELECT DISTINCT origin_airport_id, destination_airport_id
FROM suspects_flights

SELECT * FROM finding_airports


SELECT fa.origin_airport_id, fa.destination_airport_id, 
        ao.full_name AS full_name,
        ad.city AS city
FROM finding_airports fa
JOIN airports ao ON fa.origin_airport_id = ao.id
JOIN airports ad ON fa.destination_airport_id = ad.id;

-- fa represents finding_airports.
--ao and ad are aliases for airports to represent the origin and destination airports, respectively.

--this gives me names of airports of flight that took of in the morning.

