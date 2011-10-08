-- Problem 6
-- Attempted on 08/10/2011

problem6 :: Integer -> Integer
problem6 n = (n * (n+1) * (n-1) * (3*n+2)) `div` 12

main :: IO ()
main = putStrLn $ show $ problem6 100
