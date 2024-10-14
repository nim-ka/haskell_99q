data RleElem a = Single a | Multiple Int a deriving Show

encodeModified :: Eq a => [a] -> [RleElem a]
encodeModified (x1 : x2 : xs)
  | x1 == x2 = case encodeModified (x2 : xs) of
    (Single x : els) -> (Multiple 2 x : els)
    (Multiple n x : els) -> (Multiple (n + 1) x : els)
  | otherwise = (Single x1 : encodeModified (x2 : xs))
encodeModified [x] = [Single x]
encodeModified [] = []
