import Data.List

fizzBuzz :: Integer -> String
fizzBuzz n
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz"
    | n `mod` 3 == 0 = "fizz"
    | n `mod` 5 == 0 = "buzz"
    | otherwise      = show n

fizzList :: Integer -> String
fizzList n = intercalate " " (map fizzBuzz [1..n])

main = putStrLn (fizzList 100)
