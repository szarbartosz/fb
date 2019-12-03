--1
f1 = (\x -> x-2)
f2 = (\x y -> sqrt (x^2 + y^2))
f2' = (\(x,y) -> sqrt (x^2 + y^2))
f3 = (\x y z -> sqrt(x^2 + y^2 + z^2))
f3' = (\(x,y,z) -> sqrt (x^2 + y^2 + z^2))

--2
g1 = (\x -> 2 * x)
g2 = (\x -> x * 2)
g3 = (\x -> 2 ^ x)
g4 = (\x -> x ^ 2)
g5 = (\x -> 2 / x)
g6 = (\x -> x / 3)
g7 = (\x -> 4 - x)

--3
f7 = (\x -> if x `mod` 2 == 0 then True else False)
f8 = (\x -> let y = sqrt x in 2 * y^3 * (y+1))
f9 = (\x -> if x == 1 then 3 else 0)
