pack :: Eq a => [a] -> [[a]]
pack (x1 : (x2 : xs))
  | x1 == x2 = case pack (x2 : xs) of (xs : xss) -> ((x1 : xs) : xss)
  | otherwise = ([x1] : pack (x2 : xs))
pack [x] = [[x]]
pack [] = [[]]
