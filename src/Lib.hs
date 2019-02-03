module Lib where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

unflat :: [Int] -> [a] -> [[a]]
unflat []       _    = []
unflat (n : ns) list = let (a, b) = splitAt n list in a : unflat ns b

unflatN n = takeWhile (not . null) . unflat (repeat n)
