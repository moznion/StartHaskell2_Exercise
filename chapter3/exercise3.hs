fizzBuzz :: Int -> String
fizzBuzz n
	| fizz && buzz = "FizzBuzz"
	| fizz = "Fizz"
	| buzz = "Buzz"
	| otherwise = show n
	where
		fizz = n `mod` 3 == 0
		buzz = n `mod` 5 == 0
