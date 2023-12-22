-- Problem 9
-- Special Pythagorean triplet
-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
-- a^2 + b^2 = c^2
-- For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.
getFirst :: [(Int, Int, Int)] -> Int
getFirst [(a,_,_)] = a

getSecond :: [(Int, Int, Int)] -> Int
getSecond [(_,b,_)] = b

getThird :: [(Int, Int, Int)] -> Int
getThird [(_,_,c)] = c

findTriplet :: [(Int, Int, Int)]
findTriplet = [(a, b, c) | c <- [400..500], b <- [1..c], a <- [1..b], a + b + c == 1000, a^2 + b^2 == c^2]

tripletProduct :: Int
tripletProduct = getFirst findTriplet * getSecond findTriplet * getThird findTriplet