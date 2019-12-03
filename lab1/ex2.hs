sqr :: Double -> Double
sqr x = x * x

vec2DLen :: (Double, Double) -> Double
vec2DLen (x, y) = sqrt (x^2 + y^2)

vec3DLen :: (Double, Double, Double) -> Double
vec3DLen (x, y, z) = sqrt (sqr x + sqr y + sqr z)

swap :: (Int, Char) -> (Char, Int)
swap (x, s) = (s, x)

threeEqual :: (Int, Int, Int) -> Bool
threeEqual (x, y, z) = if (x == y && y == z)
                      then True
                      else False

fourEqual :: (Int, Int, Int, Int) -> Bool
fourEqual (w, x, y, z) = if(w == x && x ==y && y == z)
                        then True
                        else False