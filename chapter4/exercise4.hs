gp :: Num a => a -> a -> [a]
gp first ratio = first : gp (first * ratio) ratio
