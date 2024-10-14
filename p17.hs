split :: [a] -> Int -> ([a], [a])
split xs 0 = ([], xs)
split [] n = ([], [])
split (x : xs) n = case split xs $ n - 1 of (l, r) -> ((x : l), r)
