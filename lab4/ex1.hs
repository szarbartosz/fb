polarToCartesian :: Floating a => (a,a) -> (a,a)
polarToCartesian (r, phi) = (r * cos phi, r * sin phi)

type CartesianCoord' a = (a,a)
type PolarCoord' a = (a,a)

polarToCartesian' :: Floating a => PolarCoord' a -> CartesianCoord' a
polarToCartesian' (r, phi) = (r * cos phi, r * sin phi)

newtype CartesianCoord'' a = MkCartesianCoord'' (a,a)
newtype PolarCoord'' a = MkPoldarCoord'' (a,a)

polarToCartesian'' :: Floating a => PolarCoord'' a -> CartesianCoord'' a
polarToCartesian'' (MkPoldarCoord'' (r, phi)) = MkCartesianCoord'' (r * cos phi, r * sin phi)
