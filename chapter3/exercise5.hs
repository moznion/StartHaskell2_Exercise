import Data.Char

charToInt :: Char -> Int
charToInt c
	| isLower c = ord c - ord 'a'
	| isUpper c = ord c - ord 'A' + 26
	| otherwise = ord c

intToChar :: Int -> Char
intToChar x
	| x `elem` rangeOfSmall   = chr $ ord 'a' + x
	| x `elem` rangeOfCapital = chr $ ord 'A' + (x - 26)
	| otherwise               = chr x
	where
		rangeOfSmall   = [0..25]
		rangeOfCapital = [26..51]

shift :: Int -> Char -> Char
shift n c
	| isLower c = intToChar $ (charToInt c + n) `mod` 26
	| isUpper c = intToChar $ (charToInt c + n) `mod` 26 + 26
	| otherwise = c

caesar :: Int -> String -> String
caesar n str = [shift n x | x <- str]
