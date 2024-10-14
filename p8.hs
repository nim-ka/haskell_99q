compress :: Eq a => [a] -> [a]
compress (x1 : (x2 : xs)) = if x1 == x2 then compress (x2 : xs) else (x1 : compress (x2 : xs))
compress xs = xs
