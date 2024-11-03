SELECT * 
FROM atm_transactions
WHERE day = 28 
AND month = 7 
AND year = 2023 
AND atm_location = 'Leggett Street'
And transaction_type = 'withdraw' 
LIMIT 100