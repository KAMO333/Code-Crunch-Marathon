DROP TABLE IF EXISTS suspects;

CREATE TEMPORARY TABLE suspects AS
SELECT *
FROM temp_filtered_phone_calls pc
JOIN temp_filtered_people fp 
  ON pc.caller = fp.phone_number;


SELECT * FROM suspects

-- Join the temp files from calls and people into one file of possible suspects.
-- with their names, numbers and number plates.
