data RleElem a = Single a | Multiple Int a deriving Show

decodeModified :: [RleElem a] -> [a]
decodeModified (Single x : xs) = (x : decodeModified xs)
decodeModified (Multiple 1 x : xs) = (x : decodeModified xs)
decodeModified (Multiple n x : xs) = (x : decodeModified (Multiple (n - 1) x : xs))
decodeModified [] = []
