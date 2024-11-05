DROP TABLE IF EXISTS account_numbers;

CREATE TEMPORARY TABLE account_numbers AS
SELECT *
FROM atm_withdrawals 
LIMIT 100


SELECT * FROM account_numbers;

-- all withdrawal transactions made at Leggett Street on the 28th of July 2023

