-- Problem 1
-- Attempted on 08/10/2011

fizzbuzzsum :: Int -> Int
fizzbuzzsum n = sum [ i | i <- [1 .. n], i `mod` 3 == 0 || i `mod` 5 == 0 ]

main :: IO ()
main = putStrLn $ show $ fizzbuzzsum 999
