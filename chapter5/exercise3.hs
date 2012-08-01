g :: [a] -> [a]
g xs = tail $ tail $ tail $ tail xs

f :: [Int] -> [Int]
f xs = take 10 $ map (*3) $ filter even xs 

sqrtSum :: Int
sqrtSum = (1+) $ length $ takeWhile (<1000) $ scanl1 (+) $ map sqrt [1..]

g' :: [a] -> [a]
g' = tail . tail . tail . tail

f' :: [Int] -> [Int]
f' = take 10 . map (*3) . filter even

sqrtSum' :: Int
sqrtSum' = (1+) . length . takeWhile (<1000) . scanl1 (+) $ map sqrt [1..]
