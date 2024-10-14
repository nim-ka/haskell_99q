encode :: Eq a => [a] -> [(Int, a)]
encode (x1 : x2 : xs)
  | x1 == x2 = case encode (x2 : xs) of ((n, x) : ts) -> ((n + 1, x) : ts)
  | otherwise = ((1, x1) : encode (x2 : xs))
encode [x] = [(1, x)]
encode [] = []
