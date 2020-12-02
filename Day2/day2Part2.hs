import System.Environment
import Data.List.Split

f :: String -> Bool
f s = do
  let info = splitOn " " s
  let [firstPos, secondPos] = map (read :: String -> Int) (splitOn "-" (info !! 0))
  let letter = (info !! 1) !! 0
  let pass = info !! 2
  ((pass !! (firstPos - 1)) == letter) /= ((pass !! (secondPos - 1)) == letter)

main = do
  args <- getArgs
  content <- readFile (args !! 0)
  let inputLines = lines content
  print (length $ filter f inputLines)
