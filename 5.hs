-- Problem 5
-- Attempted 08/10/2011

import Data.List

lcm' :: Integer -> Integer
lcm' n = foldr (\x y->lcm x y) 1 [1 .. 20]


main :: IO()
main = putStrLn $ show $ lcm' 20            
