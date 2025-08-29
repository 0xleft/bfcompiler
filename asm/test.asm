SECTION .bss
bfBuffer resb 1000

SECTION .text
global _start

_start:
; null all registers
	xor eax, eax
	xor ebx, ebx
	xor edi, edi
	xor esi, esi

  lea edi, [bfBuffer] ; now edi contains pointer to bfBuffer

  mov ecx, 0

  ; body
  mov byte [edi+0], 'H'
  mov byte [edi+1], 'e'
  mov byte [edi+2], 'l'
  mov byte [edi+3], 'l'
  mov byte [edi+4], 'o'
  mov byte [edi+5], 10    ; newline

  call sprint
  call sprint

  call quit



sprint:
  push ecx
  mov ecx, edi ; buffer pointer
  pop eax
  add ecx, eax
  push eax

  mov eax, 4        ; sys_write
  mov ebx, 1        ; stdout
  mov edx, 1        ; length
  int 0x80

  pop ecx

  ret

; linux only
quit:
  mov ebx, 0 
  mov eax, 1 ; system call for sys_exit
  int 0x80 ; call kernel
  ret