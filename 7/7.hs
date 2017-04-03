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
-- all' :: (a -> Bool) -> [Bool] -> Bool
-- all' foldr (\xs x ) []

--3
map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x xs -> f x : xs) []

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x xs -> if p x then x : xs else xs) []

--4
dec2int :: [Int] -> Int
dec2int = foldl (\acc x -> x + acc) 0

--5