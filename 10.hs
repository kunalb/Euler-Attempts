-- Problem 10
-- Attempted on 10/10/2011

minus :: [Integer] -> [Integer] -> [Integer]
(minus) []   _    = []
(minus) as   []   = as
(minus) aa@(a:as) bb@(b:bs) 
    | a >  b = minus aa bs
    | a == b = minus as bs
    | a <  b = a:(minus as bb)

primeList :: Integer -> [Integer] -> [Integer]
primeList m []     = []
primeList m (x:xs) = x:(primeList m (xs `minus` [x*x, x*x+2*x .. m]))

main :: IO()
main = putStrLn $ show $ sum $! primeList 2000000 [2 .. 2000000]


