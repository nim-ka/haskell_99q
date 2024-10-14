repli :: [a] -> Int -> [a]
repli xs 0 = []
repli [] n = []
repli (x : xs) n = (x : (repli [x] $ n - 1)) ++ repli xs n
