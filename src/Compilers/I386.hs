module Compilers.I386 (
  compileFull
) where
import Parser (ASTNode(..), ASTNodeType(..))
import Text.Regex (mkRegex, subRegex)
import Debug.Trace (trace)

linuxTemplate :: String
linuxTemplate = "SECTION .bss\n\
\bfBuffer resb BUFFER_LENGTH\n\
\SECTION .text\n\
\global _start\n\
\_start:\n\
\  xor eax, eax\n\
\  xor ebx, ebx\n\
\  xor edi, edi\n\
\  xor esi, esi\n\
\  lea edi, [bfBuffer]\n\
\BODY\n\
\  call quit\n\
\incpointer:\n\
\  inc edi\n\
\  ret\n\
\decpointer:\n\
\  dec edi\n\
\  ret\n\
\incdata:\n\
\  inc byte [edi]\n\
\  ret\n\
\decdata:\n\
\  dec byte [edi]\n\
\  ret\n\
\outdata:\n\
\  push edi\n\
\  mov ecx, edi\n\
\  mov eax, 4\n\
\  mov ebx, 1\n\
\  mov edx, 1\n\
\  int 0x80\n\
\  pop edi\n\
\  ret\n\
\readdata:\n\
\  push edi\n\
\  mov ecx, edi\n\
\  mov eax, 3\n\
\  mov ebx, 0\n\
\  mov edx, 1\n\
\  int 0x80\n\
\  pop edi\n\
\  ret\n\
\quit:\n\
\  mov ebx, 0\n\
\  mov eax, 1\n\
\  int 0x80\n\
\  ret"

loopTemplate :: String
loopTemplate = ".LOOPSTART:\n\
\  cmp byte [edi], 0\n\
\  jz .LOOPEND\n\
\LOOPBODY\n\
\  cmp byte [edi], 0\n\
\  jnz .LOOPSTART\n\
\.LOOPEND:\n"

compileTree :: ASTNode -> Int -> String
compileTree root depth =
  let
    zippedChildren = zip [0..] (nodeChildren root)
    result = map (\(idx, node) -> case nodeType node of
      LOOP -> 
        let compiledChildren = compileTree node (depth + 1)
            loopWithBody = subRegex (mkRegex "LOOPBODY") loopTemplate compiledChildren
            loopStartReplaced = subRegex (mkRegex "LOOPSTART") loopWithBody ("loopstart" ++ show depth ++ show idx)
        in subRegex (mkRegex "LOOPEND") loopStartReplaced ("loopend" ++ show depth ++ show idx)
      OPERATION -> case nodeValue node of
        '-' -> "  call decdata\n"
        '+' -> "  call incdata\n"
        '>' -> "  call incpointer\n"
        '<' -> "  call decpointer\n"
        '.' -> "  call outdata\n"
        ',' -> "  call readdata\n"
        _ -> error "Somehow unhandled node operation -> " ++ show (nodeValue node)
      _ -> "") zippedChildren
  in (concat result)

compileFull :: ASTNode -> String
compileFull root = 
  let compiledBody = compileTree root 0
  in subRegex (mkRegex "BODY") linuxTemplate compiledBody