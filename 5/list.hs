-- firsts ps = [x | (x,_) <- ps]

-- factors n = [x | x <- [1..n], n `mod` x == 0]

import Data.Char

-- int2let :: Int -> Char
-- int2let n = chr (ord 'a' + n)

-- shift :: Int -> Char -> Char
-- shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
--           | otherwise = c

-- encode :: Int -> String -> String
-- encode n xs = [shift n x | x <- xs]

-- freqs :: String -> [Float]
-- freqs xs = [percent (count x xs) n | n x <- ['a'..'z']]
--     where n = lowers xs

------------------homework
--1
rootSum100 :: Int
rootSum100 = sum [x*x | x <- [1..100]]
--2
grid :: Int -> Int -> [(Int, Int)]
grid m n = [(x,y) | x <- [0..m], y <- [0..n]]
--3
square :: Int -> [(Int, Int)]
square n = [(x,y) | x <- [0..n], y <- [0..n], not (x == y) ]
--4
replicate' :: Int -> a -> [a]
replicate' n x = [x | x' <- [1..n]]
--5
pyths :: Int -> [(Int, Int, Int)]
pyths x = [(a,b,c) | a <- [1..x], b <- [1..x], c <- [1..x], a^2 + b^2 == c^2]
--6
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [ x | x <- [1..n], sum (factors x) == x*2]
--7
-- whoKnosWhat :: Int -> [(Int, Int)]
-- whoKnosWhat m = concat [(x,y) | (x,y) <- [x | ]]
--8
positions' :: Eq a => a -> [a] -> [Int]
positions' x xs = [i | (x',i) <- zip xs [0..], x == x']

find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k',v) <- t, k == k']

positions2 :: Eq a => a -> [a] -> [Int]
positions2 x xs = find x (zip xs [0..])
--9
chisqr :: [Float] -> [Float] -> Float
chisqr os es = sum [((o-e)^2)/e | (o,e) <- zip os es]

scalarproduct :: [Int] -> [Int] -> Int

