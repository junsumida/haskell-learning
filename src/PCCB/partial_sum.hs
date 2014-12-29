import System.IO
import Data.List
import Data.List.Split

toInt :: String -> Int
toInt str = read str

main :: IO ()
main = do
  contents <- readFile "partial_sum.txt"
  let n = toInt $ lines contents!!0
  let a = map toInt $ splitOn "," $ lines contents!!1
  let k = toInt $ lines contents!!2

  let answer = filterPartialSum n k a
  print answer

powerSet :: [a] -> [[a]]
powerSet []     = [[]]
powerSet (x:xs) = powerSet xs ++ [x:ys | ys <- powerSet xs]

filterPartialSum :: Int -> Int -> [Int] -> [[Int]]
filterPartialSum n k numbers = filter ((==n) . length) $ filter ((==k) . sum) $ powerSet numbers
