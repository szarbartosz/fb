--elementarne operacje na listach
--list comprehensions

isPalindrome :: [Char] -> Bool
isPalindrome s = s == reverse s

isPrime :: Integral t => t -> Bool
isPrime n | n > 1  = [i | i <- [2, n-1], n `mod` i == 0] == []
          | n <= 1 = False

--ile jest w przedziale [1..100] trojek liczb calkowitych
--reprezentujacych dlugosci bokow trojkata prostokatnego
--[(a,b,c) | a <- [1..100], b <- [1..100], c <- [1..100], a^2 + b^2 == c^2]
          
--ile jest w przedziale [1..10000] liczb pierwszych
howManyPrimes :: Num a => [a] -> Int
howManyPrimes [] = 0
howManyPrimes (x:xs) | [z | z <- [2..(head x - 1)], head x `mod` z == 0] == [] = 1 + howManyPrimes xs
                     | otherwise = howManyPrimes xs
--nie dziala
        