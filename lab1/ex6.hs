not' :: Bool -> Bool
not' b = case b of
         True -> False
         False -> True

absInt :: Int -> Int
absInt n = case (n >= 0) of
           True -> n
           _ -> -n

isItTheAnswer :: String -> Bool
isItTheAnswer s = case (s == "answer") of
                  True -> True
                  _ -> False

or' :: (Bool, Bool) -> Bool
or' (b1, b2) = case (b1 == True || b2 == True) of
                True -> True
                _ -> False

and' :: (Bool, Bool) -> Bool
and' (b1, b2) = case (b1 == True && b2 == True) of
                True -> True
                _ -> False

nand' :: (Bool, Bool) -> Bool
nand' (b1, b2) = case (b1 == False && b2 == False) of
                 True -> True
                 _ -> False

xor' :: (Bool, Bool) -> Bool
xor' (b1, b2) = case (b1 == True && b2 == False) || (b1 == False && b2 == True) of
                True -> True
                _ -> False
                 
