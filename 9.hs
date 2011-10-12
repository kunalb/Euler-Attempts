-- Problem 9
-- Attempted on 10/10/2011

main :: IO ()
main = putStrLn $ show $ head $ [ (a*b*c) | a <- [1 .. 1000], b <- [(a+1) .. 1000], let c = (1000 - a - b), a^2 + b^2 == c^2 ]
