roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c) =
    let d = sqrt (b * b -4 * a * c)
        e = 2 * a
    in ( (-b - d) / e, (-b + d) / e )

unitVec2d :: (Double, Double) -> (Double, Double)
unitVec2d (x, y) =
    let l = sqrt (x * x + y * y)
    in (x / l, y / l) 