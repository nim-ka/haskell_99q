dropEvery :: [a] -> Int -> [a]
dropEvery xs n = go xs n 1 where
  go :: [a] -> Int -> Int -> [a]
  go (x : xs) n k
    | n == k = go xs n 1
    | otherwise = (x : go xs n (k + 1))
  go [] n k = []
