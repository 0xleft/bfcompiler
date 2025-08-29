
module Compiler (
  compile
) where
import Parser (ASTNode)
import qualified System.Info
import Text.Regex

compile :: ASTNode -> Int -> String
compile root bufferLength =
  let compiled = case System.Info.arch of
                  "i386" -> compilei386 root
                  "x86_64" -> compilei386 root -- TODO replace iwth x64
                  _ -> error "Unsupported architecture if you would like to add support create a pr @ https://github.com/0xleft/bfcompiler"
  in subRegex (mkRegex "BUFFER_LENGTH") compiled (show bufferLength)

compilei386 :: ASTNode -> String
compilei386 root =
  "BUFFER_LENGTH TEST"

compilex86_64 :: ASTNode -> String
compilex86_64 root =
  ""
