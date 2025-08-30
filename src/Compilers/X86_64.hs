module Compilers.X86_64 (
  linuxTemplate,
  loopTemplate
) where

linuxTemplate :: String
linuxTemplate = "SECTION .bss\n\
\bfBuffer resb BUFFER_LENGTH\n\
\SECTION .text\n\
\global _start\n\
\_start:\n\
\  xor rax, rax\n\
\  xor rbx, rbx\n\
\  xor rdi, rdi\n\
\  xor rsi, rsi\n\
\  lea rdi, [bfBuffer]\n\
\BODY\n\
\  call quit\n\
\incpointer:\n\
\  inc rdi\n\
\  ret\n\
\decpointer:\n\
\  dec rdi\n\
\  ret\n\
\incdata:\n\
\  inc byte [rdi]\n\
\  ret\n\
\decdata:\n\
\  dec byte [rdi]\n\
\  ret\n\
\outdata:\n\
\  push rdi\n\
\  mov rcx, rdi\n\
\  mov rax, 4\n\
\  mov rbx, 1\n\
\  mov rdx, 1\n\
\  int 0x80\n\
\  pop rdi\n\
\  ret\n\
\readdata:\n\
\  push rdi\n\
\  mov rcx, rdi\n\
\  mov rax, 3\n\
\  mov rbx, 0\n\
\  mov rdx, 1\n\
\  int 0x80\n\
\  pop rdi\n\
\  ret\n\
\quit:\n\
\  mov rbx, 0\n\
\  mov rax, 1\n\
\  int 0x80\n\
\  ret"

loopTemplate :: String
loopTemplate = ".LOOPSTART:\n\
\  cmp byte [rdi], 0\n\
\  jz .LOOPEND\n\
\LOOPBODY\n\
\  cmp byte [rdi], 0\n\
\  jnz .LOOPSTART\n\
\.LOOPEND:\n"