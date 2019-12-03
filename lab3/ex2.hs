sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

sumSqr :: Num a => [a] -> a
sumSqr [] = 0
sumSqr (x:xs) = x^2 + sumSqr xs

sumWith :: Num a => (a -> a) -> [a] -> a
sumWith f [] = 0
sumWith f (x:xs) = f x + sumWith f xs

sum'' = sumWith (\x -> x)
sumSqr' = sumWith (\x -> x^2)
sumCube = sumWith (\x -> x^3)
sumAbs = sumWith (\x -> if x >= 0 then x else -x)

listLength = sumWith (\x -> 1)

prodWith :: Num a => (a -> a) -> [a] -> a
prodWith f [] = 1
prodWith f (x:xs) = f x * prodWith f xs

prod = prodWith (\x -> x)
prodSqr = prodWith (\x -> x^2)
prodCube = prodWith (\x -> x^3)
prodAbs = prodWith (\x -> if x >= 0 then x else -x)