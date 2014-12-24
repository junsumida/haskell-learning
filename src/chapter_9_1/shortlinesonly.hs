import Control.Monad
import Data.Char

main = do
    contents <- getContents
    putStr (shortLinesOnly contents)

{-
  shortLinesOnly gets string like "short\nlong\nbort"
  "lines" splits this into 3 parts, ["short", "long", "bort"]
  "unlines" combines these into "short\nlong\nbort" as string
-}
shortLinesOnly :: String -> String
shortLinesOnly = unlines . filter (\line -> length line < 10) . lines
