-- Drop the temporary table if it exists
DROP TABLE IF EXISTS persons_account_numbers;

-- Create a temporary table that holds account numbers from atm_withdrawals
CREATE TEMPORARY TABLE persons_account_numbers AS
SELECT DISTINCT account_number
FROM atm_withdrawals;

-- Select data from the temporary table
SELECT * FROM persons_account_numbers;

-- Use account_number to find the person ID from the bank_account table
SELECT ba.person_id, pan.account_number
FROM persons_account_numbers pan
JOIN bank_accounts ba
ON pan.account_number = ba.account_number;

--used ID from bank account to find names of people who made withdrawals 
-- and look for person who appear in both persons_account_numbers and suspects temporary table
SELECT p.name, p.phone_number, pan.account_number, p.passport_number
FROM persons_account_numbers pan
JOIN bank_accounts ba ON pan.account_number = ba.account_number
JOIN people p ON ba.person_id = p.id
JOIN suspects s ON p.name = s.name;


SELECT p.name, p.passport_number, fa.destination_airport_id
FROM persons_account_numbers pan
JOIN bank_accounts ba ON pan.account_number = ba.account_number
JOIN people p ON ba.person_id = p.id
JOIN suspects s ON p.name = s.name
JOIN passengers pas ON p.passport_number = pas.passport_number
JOIN suspects_flights fa ON destination_airport_id = destination_airport_id




-- The thief is Bruce, he was assistant by Diana, they flew to New York at 8:20 am on the 29th of July of 2023.








