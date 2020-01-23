func1 = do
    l <- getLine
    putStr "Checking the length..."
    putChar '\n'
    if length l <= 10 then putStrLn "OK"
    else putStrLn "Too long!"

func1' = getLine >>= \l -> putStrLn "Checking the length..." >> if length l <= 10 then putStrLn "OK" else putStrLn "Too long!"

parse2Ints :: String -> Maybe (Int, Int, [Char])
parse2Ints s = do
    (i1, s1) <- parseInt s
    (_, s2)  <- parseSep s1
    (i2, s3) <- parseInt s2
    let minVal = 10
    return (max i1 minVal, max i2 minVal, s3)

--parseInt :: String -> Maybe (Int, [Char])
--parseSep :: String -> Maybe ([Char], [Char]) 

parse2Ints = 