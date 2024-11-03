SELECT * 
FROM bakery_security_logs 
WHERE day = 28 
AND month = 7 
AND year = 2023 
AND hour = 10 
AND minute BETWEEN 18 AND 25 

--In here, I have all the exit activity that happened a few minutes after 10:15 am and will look for number plates that appear in people table,
-- and then look for numbers that made calls that lasted less than a minute.