DROP TABLE IF EXISTS temp_filtered_phone_calls;

CREATE TEMPORARY TABLE temp_filtered_phone_calls AS
SELECT * 
FROM phone_calls 
WHERE day = 28 
  AND month = 7 
  AND year = 2023 
  AND duration < 60;

SELECT * FROM temp_filtered_phone_calls;

-- Create a temp file to save, all calls made on the day of the crime, that 
-- lasted less than 60 secs.