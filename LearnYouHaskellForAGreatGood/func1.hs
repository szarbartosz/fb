f2 :: (Eq a, Num a) => a -> Int
f2 x = if x == 1 
        then 3
        else if x == 2
              then 10
              else 1

f3 i = if 2 > 3
        then True
        else False

f4 (x,y) = x == y

f5 (x,y) = if x /= 0 
            then 1/x
            else 0