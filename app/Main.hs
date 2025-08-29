module Main (
  main
) where
import Lexer (lexContents)
import Parser (parseRoot)

main :: IO ()
main = do
  testContent <- readFile "test/hello.bf"
  let lexedContents = lexContents testContent
      astRoot = parseRoot lexedContents
  
  print astRoot