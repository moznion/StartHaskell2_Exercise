analysisLine :: String -> String
analysisLine [] = "empty"
analysisLine [_] = "a charactor"
analysisLine s
	| last s == '.' = "a sentence"
	| ' ' `elem` s = "some words"
	| otherwise = "a word"
