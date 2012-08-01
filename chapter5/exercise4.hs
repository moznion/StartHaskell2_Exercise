f :: Int -> Int
f = (1+) . (2*)

g :: Int -> Int -> Int
g = (+) . (2*)

h :: Int -> [a] -> [a]
h = (fst.) . splitAt

--TODO
--i
--j
