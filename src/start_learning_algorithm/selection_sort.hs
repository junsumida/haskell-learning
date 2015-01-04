import Data.List

main :: IO ()
main = do
  let sortable_int = [12,13,11,12,14,10,10]
  print sortable_int
  print $ selectionsort sortable_int

selectionsort :: [Int] -> [Int]
selectionsort [] = []
selectionsort s = min : selectionsort (delete min s)
 where min = minimum s
