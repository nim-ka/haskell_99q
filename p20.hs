removeAt :: Int -> [a] -> (a, [a])
removeAt 1 (x : xs) = (x, xs)
removeAt n (x : xs) = case removeAt (n - 1) xs of (y, ys) -> (y, (x : ys))
removeAt 0 xs = error "index not in list"
removeAt n [] = error "index not in list"
