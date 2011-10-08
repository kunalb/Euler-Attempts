-- Problem 3
-- Attempted on 08/10/2011

primefactorize :: Integer -> [Integer]
primefactorize n = pf' n 2
    where pf' :: Integer -> Integer -> [Integer] 
          pf' 1 _ = []
          pf' n a
            | n `mod` a == 0 = a:(pf' (n `div` a) a)
            | otherwise      = pf' n (a + 1)

largestprime :: Integer -> Integer
largestprime = maximum . primefactorize

main :: IO ()
main = putStrLn $ show $ largestprime 600851475143
