-- myProduct :: [number] -> number
-- 3
myProduct [] = 1
myProduct (x:xs) = x * myProduct (xs)

-- myProduct [2,3,4]

--4
myQsort [] = []
myQsort (x:xs) = myQsort larger ++ [x] ++ myQsort smaller
    where
        smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]