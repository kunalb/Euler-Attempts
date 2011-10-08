-- Problem 7
-- Attempted on 08/10/2011

primeList :: [Int] -> [Int]
primeList []     = []
primeList (x:xs) = x:(primeList (filter (\y -> y `mod` x /= 0) xs))

main :: IO ()
main = putStrLn $ show $ last $ take 10001 $ primeList [2 ..]
