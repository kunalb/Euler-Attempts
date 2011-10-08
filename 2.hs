-- Problem 2
-- Attempted on 08/10/2011

fibsum :: Integer -> Integer
fibsum n = sum $ filter even $ takeWhile (<n) $ fib 1 2 

fib :: Integer -> Integer -> [Integer]
fib a b = a:(fib b s)
          where s = a + b

main :: IO ()
main = putStrLn $ show $ fibsum 4000000          
