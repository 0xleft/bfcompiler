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

  ; body
  mov byte [edi+0], '1'
  mov byte [edi+1], '2'
  mov byte [edi+2], '3'
  mov byte [edi+3], '4'
  mov byte [edi+4], '5'
  mov byte [edi+5], 10    ; newline

  call readdata
  call outdata
  call incpointer
  call outdata
  call incpointer
  call outdata
  call incpointer
  call outdata
  call incpointer
  call outdata
  call incpointer

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

  mov ecx, edi ; buffer pointer
  mov eax, 4        ; sys_write
  mov ebx, 1        ; stdout
  mov edx, 1        ; length
  int 0x80

  pop edi

  ret

readdata:
  push edi

  mov ecx, edi ; pointer to buffer cell
  mov eax, 3 ; sys_read
  mov ebx, 0 ; stdin
  mov edx, 1 ; len = 1
  int 0x80
  
  pop edi

  ret

; linux only
quit:
  mov ebx, 0 
  mov eax, 1 ; system call for sys_exit
  int 0x80 ; call kernel
  ret

