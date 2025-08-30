module Main (
  main
) where
import Lexer (lexContents)
import Parser (parseRoot)
import Compiler (compile)
import Arguments (parseArguments, Arguments(..))
import Data.List
import Options.Applicative
import Control.Monad
import System.IO
import System.FilePath (takeFileName)

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

  (if ".bf" `isSuffixOf` filename args then (
    do
      fileContents <- readFile (filename args)
      let lexedContents = lexContents fileContents
          astRoot = parseRoot lexedContents
          compiled = compile astRoot (bufferLength args) (compiler args)

      Control.Monad.when (outputRaw args) $ do putStrLn compiled

      handle <- openFile (takeFileName (take (length (filename args) - 3) (filename args) ++ ".asm")) WriteMode
      hPutStrLn handle compiled
      hClose handle

    ) else error "The file should end in .bf")