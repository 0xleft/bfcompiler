SECTION .bss
bfBuffer resb 1000
SECTION .text
global _start
_start:
  xor eax, eax
  xor ebx, ebx
  xor edi, edi
  xor esi, esi
  lea edi, [bfBuffer]
  call decdata
  call decdata
  call decdata
  call decdata
.loopstart04:
  cmp byte [edi], 0
  jz .loopend04
  call decdata
  call decdata
  call decdata
  call decdata
  call incpointer
  call incdata
  call decpointer

  cmp byte [edi], 0
  jnz .loopstart04
.loopend04:
  call incpointer
  call incdata
  call incdata
  call outdata

  call quit
incpointer:
  inc edi
  ret
decpointer:
  dec edi
  ret
incdata:
  inc byte [edi]
  ret
decdata:
  dec byte [edi]
  ret
outdata:
  push edi
  mov ecx, edi
  mov eax, 4
  mov ebx, 1
  mov edx, 1
  int 0x80
  pop edi
  ret
readdata:
  push edi
  mov ecx, edi
  mov eax, 3
  mov ebx, 0
  mov edx, 1
  int 0x80
  pop edi
  ret
quit:
  mov ebx, 0
  mov eax, 1 ; system call for sys_exit
  int 0x80 ; call kernel
  ret