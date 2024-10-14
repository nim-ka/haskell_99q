myLast :: [a] -> a
myLast [x] = x
myLast (x : xs) = myLast xs
myLast _ = error "no last element"
