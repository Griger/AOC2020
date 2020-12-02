import System.Environment
import Data.List.Split

f :: String -> Bool
f s = do
  let info = splitOn " " s
  let [min, max] = map (read :: String -> Int) (splitOn "-" (info !! 0))
  let letter = (info !! 1) !! 0
  let count = length $ filter (== letter) (info !! 2)
  min <= count && count <= max

main = do
  args <- getArgs
  content <- readFile (args !! 0)
  let inputLines = lines content
  print (length $ filter f inputLines)
