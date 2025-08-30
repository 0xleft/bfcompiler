SECTION .bss
bfBuffer resb 1000

SECTION .text
global _start

_start:
; null all registers
	xor rax, rax
	xor rbx, rbx
	xor rdi, rdi
	xor rsi, rsi

  lea rdi, [bfBuffer] ; now rdi contains pointer to bfBuffer

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

.looprandomname_start1:
  cmp byte [rdi], 0
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

  cmp byte [rdi], 0
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
  cmp byte [rdi], 0
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

  cmp byte [rdi], 0
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

  mov rcx, rdi ; buffer pointer
  mov rax, 4        ; sys_write
  mov rbx, 1        ; stdout
  mov rdx, 1        ; length
  int 0x80

  pop rdi

  ret

readdata:
  push rdi

  mov rcx, rdi ; pointer to buffer cell
  mov rax, 3 ; sys_read
  mov rbx, 0 ; stdin
  mov rdx, 1 ; len = 1
  int 0x80
  
  pop rdi

  ret

; linux only
quit:
  mov rbx, 0 
  mov rax, 1 ; system call for sys_exit
  int 0x80 ; call kernel

  ret


; DEBUG STUFFS


strlen:
    push rbx ; push it to preserve it
    mov rbx, rax

.next:
    cmp byte [rax], 0 ; check if we've reached the end of the string
    jz .done ; if we have, we're done
    inc rax ; increment the pointer
    jmp .next ; loop again

.done:
    sub rax, rbx ; subtract the start address from the end address to get the length
    pop rbx ; restore the original value of rbx
    ret ; return to the caller

; string is stored in rax, but needs to be moved to rcx
sprint:
    push rdx
    push rcx
    push rbx
    push rax

    call strlen

    mov rdx, rax ; length of the string
    pop rax ; string

    mov rcx, rax ; string
    mov rbx, 1 ; file descriptor (stdout)
    mov rax, 4 ; system call for sys_write
    int 0x80 ; call kernel
    
    pop rbx
    pop rcx
    pop rdx
    
    ret ; return to caller

iprint:
    push    rax             ; preserve rax on the stack to be restored after function runs
    push    rcx             ; preserve rcx on the stack to be restored after function runs
    push    rdx             ; preserve rdx on the stack to be restored after function runs
    push    rsi             ; preserve rsi on the stack to be restored after function runs
    mov     rcx, 0          ; counter of how many bytes we need to print in the end
 
.divideLoop:
    inc     rcx             ; count each byte to print - number of characters
    mov     rdx, 0          ; empty rdx
    mov     rsi, 10         ; mov 10 into rsi
    idiv    rsi             ; divide rax by rsi
    add     rdx, 48         ; convert rdx to it's ascii representation - rdx holds the remainder after a divide instruction
    push    rdx             ; push rdx (string representation of an intger) onto the stack
    cmp     rax, 0          ; can the integer be divided anymore?
    jnz     .divideLoop      ; jump if not zero to the label divideLoop
 
.printLoop:
    dec     rcx             ; count down each byte that we put on the stack
    mov     rax, rsp        ; mov the stack pointer into rax for printing
    call    sprint          ; call our string print function
    pop     rax             ; remove last character from the stack to move rsp forward
    cmp     rcx, 0          ; have we printed all bytes we pushed onto the stack?
    jnz     .printLoop       ; jump is not zero to the label printLoop
 
    pop     rsi             ; restore rsi from the value we pushed onto the stack at the start
    pop     rdx             ; restore rdx from the value we pushed onto the stack at the start
    pop     rcx             ; restore rcx from the value we pushed onto the stack at the start
    pop     rax             ; restore rax from the value we pushed onto the stack at the start
    ret

