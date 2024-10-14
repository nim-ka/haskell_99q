rotate :: [a] -> Int -> [a]
rotate [] n = []
rotate (x1 : xs) n
  | n > 0 = rotate (xs ++ [x1]) (n - 1)
  | n < 0 = reverse (rotate (reverse (x1 : xs)) (-n))
  | n == 0 = (x1 : xs)
