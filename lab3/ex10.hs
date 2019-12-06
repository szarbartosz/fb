isSortedAsc :: Ord a => [a] -> Bool
isSortedAsc xs = not (False `elem` zipWith (<) xs (tail xs))

isSortedDesc :: Ord a => [a] -> Bool
isSortedDesc xs = not (False `elem` zipWith (>) xs (tail xs))

