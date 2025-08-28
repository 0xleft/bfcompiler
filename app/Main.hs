module Main (
  main
) where
import Utils (getFileContents)
import Lexer (lexContents)
import Parser (parseRoot)

main :: IO ()
main = do
  testContent <- getFileContents "test/test.bf"
  let lexedContents = lexContents testContent
  let astRoot = parseRoot lexedContents
  print astRoot