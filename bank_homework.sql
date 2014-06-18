-- In case there is already a bank_homework database, drop it
DROP DATABASE IF EXISTS bank_homework;

-- Create a bank_homework database
CREATE DATABASE bank_homework;

-- Connect to the bank_homework databases
\c bank_homework


-- Create a payments table
--  The table should have columns of id, created_at, amount, payer_name,
--  recipient_name, and description with the appropriate datatypes
CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  created_at DATE,
  amount MONEY,
  payer_name TEXT,
  recipient_name TEXT,
  description TEXT
);

-- Alter the payments table, add the column of `zipcode`
-- to specify where the transaction was made
ALTER TABLE payments ADD zipcode INTEGER;

-- Insert 20 rows into the payments table
-- The first of these payments should be deposits (description?)
-- try to keep the accounts positive and have at least three different payers.
INSERT INTO payments () VALUES
  ('2014-05-01', 10.00, 'Moe', 'Larry', 'desposit'),
  ('2014-05-02', -5.00, 'Sarah', 'Larry', 'payment'),
  ('2014-05-03', 20.00, 'Sarah', 'Moe', 'desposit'),
  ('2014-05-04', 10.00, 'Larry', 'Sarah', 'desposit'),
  ('2014-05-05', 60.00, 'Moe', 'Larry', 'desposit'),
  ('2014-05-06', -10.00, 'Moe', 'Larry', 'payment'),
  ('2014-05-07', 1.00, 'Sarah', 'Jitsi', 'desposit'),
  ('2014-05-08', -10.00, 'Larry', 'Moe', 'payment'),
  ('2014-05-09', 30.00, 'Jitsi', 'Sarah', 'payment'),
  ('2014-05-10', 17.00, 'Moe', 'Larry', 'desposit'),
  ('2014-05-11', -23.00, 'Chava', 'Larry', 'payment'),
  ('2014-05-12', 1.00, 'Moe', 'Larry', 'desposit'),
  ('2014-05-13', 13.00, 'Moe', 'Larry', 'desposit'),
  ('2014-05-14', -14.00, 'Chava', 'Sarah', 'payment'),
  ('2014-05-15', 10.00, 'Moe', 'Larry', 'desposit'),
  ('2014-05-16', 45.00, 'Larry', 'Jitsi', 'desposit'),
  ('2014-05-17', 10.00, 'Moe', 'Larry', 'desposit'),
  ('2014-05-18', -10.00, 'Jitsi', 'Chava', 'payment'),
  ('2014-05-19', 10.00, 'Sarah', 'Larry', 'desposit'),
  ('2014-05-20', 42.00, 'Moe', 'Larry', 'desposit');

-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected
UPDATE payments SET amount = (amount + 10) WHERE id = 9;

-- Delete all payments with an amount under $2
DELETE amount FROM payments WHERE amount =< 2;


-- Select all entries from the payments table
SELECT * FROM payments;

-- In a single query, output all payments ordered from the largest to the smallest
SELECT amount FROM payments ORDER BY DESC;
SELECT * FROM payments ORDER BY DESC;
-- In a single query, output the names of all distinct recipients
SELECT DISTINCT recipient_name FROM payments;

-- In a single query, select all payments created in the past week


-- In a single query, select all payments with a blank description
SELECT description FROM payments WHERE description = NULL;

-- In a single query, select all payments matching the name of one of the payers (choose any single one)
