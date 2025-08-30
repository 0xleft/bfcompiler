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

  ; >++++++++[<+++++++++>-]<. >++++[<+++++++>-]<+.+++++++..+++.>>++++++[<+++++++>-]<+

; BEGIN BODY

  call incpointer

  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata

.looprandomnamestart1:
  cmp byte [edi], 0
  jz .looprandomnameend1

  call decpointer

  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata

  call incpointer

  call decdata

  cmp byte [edi], 0
  jnz .looprandomnamestart1
  
.looprandomnameend1:

  call decpointer
  call outdata

  call incpointer
  call incdata
  call incdata
  call incdata
  call incdata

.looprandomnamestart2:
  cmp byte [edi], 0
  jz .looprandomnameend2

  call decpointer
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incpointer
  call decdata

  cmp byte [edi], 0
  jnz .looprandomnamestart2
  
.looprandomnameend2:

  call decpointer
  call incdata
  call outdata

  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata

  call outdata
  call outdata

  call incdata
  call incdata
  call incdata

  call outdata

; END BODY

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


; DEBUG STUFFS


strlen:
    push ebx ; push it to preserve it
    mov ebx, eax

.next:
    cmp byte [eax], 0 ; check if we've reached the end of the string
    jz .done ; if we have, we're done
    inc eax ; increment the pointer
    jmp .next ; loop again

.done:
    sub eax, ebx ; subtract the start address from the end address to get the length
    pop ebx ; restore the original value of ebx
    ret ; return to the caller

; string is stored in EAX, but needs to be moved to ecx
sprint:
    push edx
    push ecx
    push ebx
    push eax

    call strlen

    mov edx, eax ; length of the string
    pop eax ; string

    mov ecx, eax ; string
    mov ebx, 1 ; file descriptor (stdout)
    mov eax, 4 ; system call for sys_write
    int 0x80 ; call kernel
    
    pop ebx
    pop ecx
    pop edx
    
    ret ; return to caller

iprint:
    push    eax             ; preserve eax on the stack to be restored after function runs
    push    ecx             ; preserve ecx on the stack to be restored after function runs
    push    edx             ; preserve edx on the stack to be restored after function runs
    push    esi             ; preserve esi on the stack to be restored after function runs
    mov     ecx, 0          ; counter of how many bytes we need to print in the end
 
.divideLoop:
    inc     ecx             ; count each byte to print - number of characters
    mov     edx, 0          ; empty edx
    mov     esi, 10         ; mov 10 into esi
    idiv    esi             ; divide eax by esi
    add     edx, 48         ; convert edx to it's ascii representation - edx holds the remainder after a divide instruction
    push    edx             ; push edx (string representation of an intger) onto the stack
    cmp     eax, 0          ; can the integer be divided anymore?
    jnz     .divideLoop      ; jump if not zero to the label divideLoop
 
.printLoop:
    dec     ecx             ; count down each byte that we put on the stack
    mov     eax, esp        ; mov the stack pointer into eax for printing
    call    sprint          ; call our string print function
    pop     eax             ; remove last character from the stack to move esp forward
    cmp     ecx, 0          ; have we printed all bytes we pushed onto the stack?
    jnz     .printLoop       ; jump is not zero to the label printLoop
 
    pop     esi             ; restore esi from the value we pushed onto the stack at the start
    pop     edx             ; restore edx from the value we pushed onto the stack at the start
    pop     ecx             ; restore ecx from the value we pushed onto the stack at the start
    pop     eax             ; restore eax from the value we pushed onto the stack at the start
    ret

