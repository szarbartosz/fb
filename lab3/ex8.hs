doubleElems []       = []
doubleElems (x: xs) = 2 * x : doubleElems xs

sqrElems []     = []
sqrElems (x:xs) = x ^ 2 : sqrElems xs

map' :: (a -> b) -> [a] -> [b]
map' f (x:xs) = f x : map f xs

doubleElems' = map' (*2)

sqrElems' = map' (^2)

