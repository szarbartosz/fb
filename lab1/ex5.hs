not' :: Bool -> Bool
not' True = False
not' False = True

isItTheAnswer :: String -> Bool
isItTheAnswer "answer" = True
isItTheAnswer _ = False

or' :: (Bool, Bool) -> Bool
or' (False, False) = False
or' _ = True

and' :: (Bool, Bool) -> Bool
and' (True, True) = True
and' _ = False
