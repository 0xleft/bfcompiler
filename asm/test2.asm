SECTION .bss
bfBuffer resb 1000
SECTION .text
global _start
_start:
  xor rax, rax
  xor rbx, rbx
  xor rdi, rdi
  xor rsi, rsi
  lea rdi, [bfBuffer]
  call decdata
  call decdata
  call decdata
  call decdata
.loopstart04:
  cmp byte [rdi], 0
  jz .loopend04
  call decdata
  call decdata
  call decdata
  call decdata
  call incpointer
  call incdata
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart04
.loopend04:
  call incpointer
  call incdata
  call incdata
  call outdata

  call quit
incpointer:
  inc rdi
  ret
decpointer:
  dec rdi
  ret
incdata:
  inc byte [rdi]
  ret
decdata:
  dec byte [rdi]
  ret
outdata:
  push rdi
  mov rcx, rdi
  mov rax, 4
  mov rbx, 1
  mov rdx, 1
  int 0x80
  pop rdi
  ret
readdata:
  push rdi
  mov rcx, rdi
  mov rax, 3
  mov rbx, 0
  mov rdx, 1
  int 0x80
  pop rdi
  ret
quit:
  mov rbx, 0
  mov rax, 1 ; system call for sys_exit
  int 0x80 ; call kernel
  ret