slice :: [a] -> Int -> Int -> [a]
slice xs 1 0 = []
slice (x : xs) 1 e = (x : slice xs 1 (e - 1))
slice (x : xs) s e = slice xs (s - 1) (e - 1)
slice [] s e = []
