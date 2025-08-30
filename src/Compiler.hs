module Compiler (
  compile
) where
import qualified System.Info
import Text.Regex (mkRegex, subRegex)
import Compilers.I386
import Compilers.X86_64
import Parser (ASTNode(..), ASTNodeType(..))

-- eww ugly
compile :: ASTNode -> Int -> String -> String
compile root bufferLength compiler =
    case compiler of
      "i386" -> subRegex (mkRegex "BUFFER_LENGTH") (compilei386 root) (show bufferLength) 
      "x86_64" -> subRegex (mkRegex "BUFFER_LENGTH") (compilex86_64 root) (show bufferLength) 
      _ -> let compiled = case System.Info.arch of
                  "i386" -> compilei386 root
                  "x86_64" -> compilex86_64 root
                  _ -> error "Unsupported architecture if you would like to add support create a pr @ https://github.com/0xleft/bfcompiler"
           in subRegex (mkRegex "BUFFER_LENGTH") compiled (show bufferLength)

compilei386 :: ASTNode -> String
compilei386 root = 
  let compiledBody = compileTree root Compilers.I386.loopTemplate ""
  in subRegex (mkRegex "BODY") Compilers.I386.linuxTemplate compiledBody

compilex86_64 :: ASTNode -> String
compilex86_64 root =
  let compiledBody = compileTree root Compilers.X86_64.loopTemplate ""
  in subRegex (mkRegex "BODY") Compilers.X86_64.linuxTemplate compiledBody

compileTree :: ASTNode -> String -> String -> String
compileTree root loopTmplt depth =
  let
    zippedChildren = zip [0..] (nodeChildren root)
    result = map (\(idx, node) -> case nodeType node of
      LOOP ->
        let compiledChildren = compileTree node loopTmplt (depth ++ "_" ++ show idx)
            loopWithBody = subRegex (mkRegex "LOOPBODY") loopTmplt compiledChildren
            loopStartReplaced = subRegex (mkRegex "LOOPSTART") loopWithBody ("loopstart" ++ depth ++ "_" ++ show idx)
        in subRegex (mkRegex "LOOPEND") loopStartReplaced ("loopend" ++ depth ++ "_" ++ show idx)
      OPERATION -> case nodeValue node of
        '-' -> "  call decdata\n"
        '+' -> "  call incdata\n"
        '>' -> "  call incpointer\n"
        '<' -> "  call decpointer\n"
        '.' -> "  call outdata\n"
        ',' -> "  call readdata\n"
        _ -> error "Somehow unhandled node operation -> " ++ show (nodeValue node)
      _ -> "") zippedChildren
  in concat result