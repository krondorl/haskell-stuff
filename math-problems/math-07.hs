-- Problem 7
-- 10001st prime
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?
isPrime :: Int -> Bool
isPrime x = null [y | y <- [2..floor (sqrt (fromIntegral x))], x `mod` y == 0]

primesList :: [Int]
primesList = filter isPrime [2..105000]
  
get10001stPrime :: Int
get10001stPrime = last (take 10001 primesList)