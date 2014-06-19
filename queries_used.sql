-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected
UPDATE payments SET amount = (amount + 10.00) WHERE id = 9;
--had trouble with amount = (amount + 10.00)

-- Delete all payments with an amount under $2
DELETE FROM payments WHERE amount < 2;


-- Select all entries from the payments table
SELECT * FROM payments;

-- In a single query, output all payments ordered from the largest to the smallest
SELECT * FROM payments ORDER BY amount DESC;

-- In a single query, output the names of all distinct recipients
SELECT DISTINCT recipient_name FROM payments;

-- In a single query, select all payments created in the past week


-- In a single query, select all payments with a blank description
SELECT * FROM payments WHERE description IS NULL;

-- In a single query, select all payments matching the name of one of the payers (choose any single one)
SELECT * FROM payments WHERE (payer_name = 'Moe') OR (recipient_name = 'Moe');
