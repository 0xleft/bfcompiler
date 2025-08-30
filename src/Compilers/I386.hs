module Compilers.I386 (
  linuxTemplate,
  loopTemplate
) where

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

