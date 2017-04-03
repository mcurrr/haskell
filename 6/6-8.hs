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

--6
----a
and' :: [Bool] -> Bool
and' [True] = True
and' (x:xs) | x == False = False
            | otherwise  = and' xs
--b
concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs

----c
replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate (n-1) x
-- ----d
-- (!!) :: [a] -> Int -> a
-- (!!) x:xs 0 = x
-- (!!) x:xs n = (!!) xs (n-1)
----e
elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' n (x:xs) | n == x    = True
              | otherwise = elem' n xs


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
