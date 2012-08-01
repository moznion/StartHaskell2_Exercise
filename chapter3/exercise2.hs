isLeap :: Int -> Bool
isLeap year
    | year `divisibleBy` 4 && not (year `divisibleBy` 100) = True
    | year `divisibleBy` 400 = True
    | otherwise = False
    where
        divisibleBy x y = x `mod` y == 0
