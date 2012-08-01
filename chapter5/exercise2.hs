import Data.List
import Data.Maybe

collatz :: Int -> [Int]
collatz 1  = [1]
collatz n
	| even n    = n : collatz (n `div` 2)
	| otherwise = n : collatz (n * 3 + 1)

longestLengthOfCollatz :: Int
longestLengthOfCollatz = fromJust (elemIndex (maximum lengthList) lengthList) + 1
	where
		lengthList = [length $ collatz x | x <- [1..100]]
