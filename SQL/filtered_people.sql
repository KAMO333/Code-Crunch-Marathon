DROP TABLE IF EXISTS temp_filtered_people;
CREATE TEMPORARY TABLE temp_filtered_people AS
SELECT * 
FROM people 
WHERE license_plate IN (
    SELECT license_plate 
    FROM bakery_security_logs 
    WHERE day = 28 
      AND month = 7 
      AND year = 2023 
      AND hour = 10 
      AND minute BETWEEN 18 AND 25
);

SELECT * FROM temp_filtered_people;

-- Firstly, I create a temporary file, then in people, look for number plates that appear from the bakeries 
-- security log. These are people who left within 10 mins of the crime.
