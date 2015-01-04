main :: IO ()
main = do
  let sortable = [100,12,12,19,13,11,12,14,10,10]
  print sortable
  print $ bubblesort sortable

bubblesort :: (Ord a) => [a] -> [a]
bubblesort []     = []
bubblesort (x:[]) = [x]
bubblesort (x:xs)
  | x > y     = y : bubblesort (x:ys)
  | otherwise = x : bubblesort (y:ys)
  where (y:ys) = bubblesort xs
