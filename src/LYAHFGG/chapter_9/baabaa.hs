import System.IO
import Data.Char

main = do
    contents <- readFile "baabaa.txt"
    putStr contents
    writeFile "baabaacaps.txt" (map toUpper contents)