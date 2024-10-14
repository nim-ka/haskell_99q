myButLast :: [a] -> a
myButLast [x1, x2] = x1
myButLast (x : xs) = myButLast xs
myButLast _ = error "no second-to-last element"
