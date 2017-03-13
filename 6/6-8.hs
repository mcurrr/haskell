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
