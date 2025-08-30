module Main (
  main
) where
import Lexer (lexContents)
import Parser (parseRoot)
import Compiler (compile)
import Arguments (parseArguments, Arguments(..))

import Options.Applicative

main :: IO ()
main = start =<< execParser opts
  where
    opts = info (parseArguments <**> helper)
      ( fullDesc
     <> progDesc "Compile bf files to assembly"
     <> header "" )

start :: Arguments -> IO ()
start args = do
-- do stuffs

  testContent <- readFile (filename args)
  let lexedContents = lexContents testContent
      astRoot = parseRoot lexedContents
      compiled = compile astRoot 1000 (compiler args)

  putStrLn compiled