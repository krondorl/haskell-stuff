-- Problem 10
-- Summation of primes
-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.
sumPrimesListBelow2M :: Int
sumPrimesListBelow2M = sum $ filter isPrime [2..2000000]