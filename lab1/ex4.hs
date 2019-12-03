absInt :: Int -> Int
absInt n | n > 0 = n
         | otherwise = -n         

sgn :: Int -> Int
sgn n | n < 0 = -1
      | n == 0 = 0
      | otherwise = 1

min3Int :: (Int, Int, Int) -> Int
min3Int (x, y, z) | x < y && x < z = x
                  | y < x && y < z = y
                  | z < y && z < x = z
                  | z == x && x < y = z
                  | y == z && y < x = y
                  | x == z && z < y = x
                  | z == x && x > y = y
                  | y == z && y > x = x
                  | x == z && z > y = y
                  | otherwise = x

toLower :: Char -> Char
toLower x | x >= 'A' && x <= 'Z' = toEnum(fromEnum x + 32)
          | otherwise = x

toUpper :: Char -> Char
toUpper x | x >= 'a' && x <= 'z' = toEnum(fromEnum x - 32)
          | otherwise = x
