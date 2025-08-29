module Main (
  main
) where
import Lexer (lexContents)
import Parser (parseRoot)
import Compiler (compile)
import System.Info (arch)

main :: IO ()
main = do
  testContent <- readFile "test/hello.bf"
  let lexedContents = lexContents testContent
      astRoot = parseRoot lexedContents
      compiled = compile astRoot 1000

  print System.Info.arch

  print astRoot
  putStrLn compiled
  