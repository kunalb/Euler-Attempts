-- Problem 4
-- Attempted on 08/10/2011

main :: IO()
main = putStrLn $ show $ maximum $ [ p | x <- [999,998 .. 100], y <- [x,x-1 .. 100], let p = x * y, let s = show p, s == reverse s ]
