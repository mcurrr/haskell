--3
-- second :: [a] -> ([a] -> ([a] -> a))
second :: [a] -> a
second xs = head (tail xs)
-- swap :: (a, b) -> (b, a)
swap (x,y) = (y,x)
-- pair :: a -> (b -> (a, b))
pair :: a -> b -> (a, b)
pair x y = (x,y)
-- double :: Num a => a -> a
double x = x*2
-- palindrome :: [a] -> [a] -> [a] -> Bool
palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs
-- twice :: (a -> b) -> ((a -> b) -> b)
twice :: (a -> a) -> a -> a
twice f x = f (f x)
