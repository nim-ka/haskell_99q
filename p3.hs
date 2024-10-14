elementAt :: [a] -> Int -> a
elementAt (x : xs) 1 = x
elementAt (x : xs) n = elementAt xs $ n - 1
elementAt [] _ = error "index not in list"
