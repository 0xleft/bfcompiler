module Arguments (
    Arguments(..),
    parseArguments
) where

import Options.Applicative

data Arguments = Arguments {
  filename :: String,
  bufferLength :: Int,
  compiler :: String,
  outputRaw :: Bool
} deriving (Eq, Show, Read)

parseArguments :: Parser Arguments
parseArguments = Arguments
  <$> parseFilename
  <*> parseBufferLength
  <*> parseCompiler
  <*> parseOutputRaw

parseFilename :: Parser String
parseFilename = argument str (metavar "File")

parseBufferLength :: Parser Int
parseBufferLength = argument auto (metavar "BufferLength")

parseCompiler :: Parser String
parseCompiler = strOption (
  long "compiler"
  <> short 'c'
  <> metavar "Compiler"
  <> value ""
  <> help "The compiler you want to force use")

parseOutputRaw :: Parser Bool
parseOutputRaw = switch (
  long "outputraw"
  <> short 'o'
  <> help "Output raw assembly in to the terminal" )