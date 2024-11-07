DROP TABLE IF EXISTS atm_withdrawals;

CREATE TEMPORARY TABLE atm_withdrawals AS
SELECT *
FROM atm_transactions
WHERE day = 28 
AND month = 7 
AND year = 2023 
AND atm_location = 'Leggett Street'
And transaction_type = 'withdraw' 
LIMIT 100


SELECT * FROM atm_withdrawals;

-- all withdrawal transactions made at Leggett Street on the 28th of July 2023

