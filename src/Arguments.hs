module Arguments (
    Arguments(..),
    parseArguments
) where

import Options.Applicative

data Arguments = Arguments {
  filename :: String,
  compiler :: String
} deriving (Eq, Show, Read)

parseArguments :: Parser Arguments
parseArguments = Arguments
    <$> parseFilename
    <*> parseCompiler

parseFilename :: Parser String
parseFilename = argument str (metavar "FILE")

parseCompiler :: Parser String
parseCompiler = strOption (
  long "compiler"
  <> short 'c'
  <> metavar "COMPILER"
  <> value ""
  <> help "The compiler you want to force use")