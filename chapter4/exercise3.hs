oddEven :: [Int] -> ([Int], [Int])
oddEven [] = ([], [])
oddEven (x:xs)
	| odd x 		= connectTuple ([x], []) $ oddEven xs
	| otherwise = connectTuple ([], [x]) $ oddEven xs
	where
		connectTuple :: ([Int], [Int]) -> ([Int], [Int]) -> ([Int], [Int]) 
		connectTuple (x1, y1) (x2, y2) = (x1 ++ x2, y1 ++ y2)
