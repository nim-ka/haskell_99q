dupli :: [a] -> [a]
dupli (x : xs) = (x : x : dupli xs)
dupli [] = []
