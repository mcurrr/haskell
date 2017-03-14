--1
fac2 :: Int -> Int
fac2 n | n < 0     = 0
       | otherwise = product [1..n]

--2
sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown(n-1)

--3
-- (^) :: Int -> Int -> Int
-- m ^ 0 = 1
-- m ^ n = m * (m ^ (n-1))

--4
euclid :: Int -> Int -> Int
euclid a b | a == b    = a
           | otherwise = euclid x y
                where
                    x = abs (a - b)
                    y = min a b


--7
merge' :: Ord a => [a] -> [a] -> [a]
merge' [] xs = xs
merge' xs [] = xs
merge' (x:xs) (y:ys) | x <= y    = x : merge' xs (y:ys)
                     | otherwise = y : merge' (x:xs) ys

--8
msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge' (msort l) (msort r)
            where
                (l, r) = halve xs

halve :: [a] -> ([a], [a])
halve xs = (take h xs, drop h xs)
            where 
                h = length xs `div` 2

