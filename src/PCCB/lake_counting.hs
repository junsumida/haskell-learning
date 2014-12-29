import System.IO
import Data.List.Split

toInt :: String -> Int
toInt str = read str

main :: IO ()
main = do
  contents <- readFile "lake_counting.txt"
  let nm   = map toInt $ splitOn " " $ head $ lines contents
  let n    = nm !! 0
  let m    = nm !! 1
  let yard = tail $ lines contents

  print n
  print m
  print yard
