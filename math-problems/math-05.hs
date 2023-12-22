-- Problem 5
-- Smallest multiple
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
divisorNumbers = [3..19]

divisors :: Integer -> [Integer]
divisors n = [x | x <- divisorNumbers, n `mod` x == 0]

checkDivisors :: Integer -> Integer
checkDivisors n = if divisors n == divisorNumbers
  then n
  else smallestMultiple (n + 20)

smallestMultiple :: Integer -> Integer
smallestMultiple n = if n `mod` 3 == 0 && n `mod` 4 == 0
  then checkDivisors n
  else smallestMultiple (n + 20)