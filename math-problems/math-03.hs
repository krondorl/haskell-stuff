-- Problem 3
-- Largest prime factor
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?
primeFactors n = primeFactors' n 2
  where
    primeFactors' n f
      | f*f > n        = [n]
      | n `mod` f == 0 = f : primeFactors' (n `div` f) f
      | otherwise      = primeFactors' n (f + 1)

largestPrimeFactors = last (primeFactors 600851475143)