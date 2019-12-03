length' :: [a] -> Int
length' xs = sum [1 | _ <- xs]

removeNonUpperCase :: [Char] -> [Char]
removeNonUpperCase s = [c | c <- s, c `elem` ['A'..'Z']]

head' :: [a] -> a
head' [] = error "Can't call head on empty list!"
head' (x:_) = x

length'2 :: (Num b) => [a] -> b
length'2 [] = 0
length'2 (x:xs) = 1 + length'2 xs

sum' :: (Num a) => [a] -> 'a'
sum' [] = 0
sum' (x:xs) = x + sum' xs

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys