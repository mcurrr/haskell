reverse' :: [a] -> [a]
-- reverse' = foldr (\x xs -> xs ++ [x]) []
reverse' = foldl (\xs x -> xs ++ [x]) []

snoc x xs = xs ++ [x]
-- reverse' :: [a] -> [a]
-- reverse' = foldr snoc []


--homework
--1
-- [f x | x <- xs, p x]
-- map' f (filter' p x)

--2

--a
all' :: (a -> Bool) -> [a] -> Bool
all' f = and . map f

-- all'' _ [] = True
-- all'' f (x:xs) | f x = all'' f xs
--                | otherwise = False

--b
any' :: (a -> Bool) -> [a] -> Bool
any' f = or . map f

-- any'' _ [] = False
-- any'' f (x:xs) | f x = True
--                | otherwise = any'' f xs

--c
takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' f (x:xs) | f x       = x : takeWhile' f xs
                    | otherwise = []

--d
dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' f (x:xs) | f x       = dropWhile' f xs
                    | otherwise = x:xs

--3
map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x xs -> f x : xs) []

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x xs -> if p x then x : xs else xs) []

--4
dec2int :: [Int] -> Int
dec2int = foldl (\acc x -> acc*10 + x) 0

--5
