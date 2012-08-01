-- Original: https://gist.github.com/3158648
-- これすげー速い！
fib :: Integer -> Integer
fib n = fib' n 0 1
	where
		fib' 0 x _ = x
		fib' m x y = fib' (m - 1) y (x + y)
