abs' :: (Ord p, Num p) => p -> p
abs' x | x >= 0 = x
       | otherwise = -x