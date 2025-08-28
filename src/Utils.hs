module Utils (
  getFileContents
) where

getFileContents :: String -> IO String
getFileContents filename = do
  contents <- readFile filename
  return contents