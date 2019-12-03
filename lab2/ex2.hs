fiveToPower_ :: Integer -> Integer
fiveToPower_ = (5 ^)

_toPower5 :: Num a => a -> a
_toPower5 = (^ 5)

subtrNFrom5 :: Num a => a -> a
subtrNFrom5 = (-) 5

subtr5From_ :: Num a => a -> a
subtr5From_ = subtract 5
--subtr5From_ = flip (-) 5