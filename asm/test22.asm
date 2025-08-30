SECTION .bss
bfBuffer resb 100000
SECTION .text
global _start
_start:
  xor rax, rax
  xor rbx, rbx
  xor rdi, rdi
  xor rsi, rsi
  lea rdi, [bfBuffer]
.loopstart_0:
  cmp byte [rdi], 0
  jz .loopend_0
  call outdata
  call decdata
  call decdata
  call outdata
  call outdata

  cmp byte [rdi], 0
  jnz .loopstart_0
.loopend_0:
  call incdata
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incdata
  call incdata
  call incpointer
  call incdata
  call incpointer
  call incdata
  call incpointer
  call incdata
  call incpointer
  call incdata
  call incdata
  call decpointer
.loopstart_21:
  cmp byte [rdi], 0
  jz .loopend_21
  call incdata
.loopstart_21_1:
  cmp byte [rdi], 0
  jz .loopend_21_1
  call decdata
  call decdata
.loopstart_21_1_2:
  cmp byte [rdi], 0
  jz .loopend_21_1_2
  call incdata
  call incdata
  call incpointer
  call incpointer
  call decdata
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_1_2
.loopend_21_1_2:
  call decdata
  call incpointer
  call decdata
  call decdata
.loopstart_21_1_7:
  cmp byte [rdi], 0
  jz .loopend_21_1_7
  call incdata
.loopstart_21_1_7_1:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1
  call incdata
  call decpointer
  call incdata
.loopstart_21_1_7_1_3:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_3
  call decdata
  call decpointer
  call decpointer
  call incdata

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_3
.loopend_21_1_7_1_3:
  call incdata
  call incdata
  call decpointer
  call decpointer
.loopstart_21_1_7_1_8:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_8
  call decdata
.loopstart_21_1_7_1_8_1:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_8_1
  call decdata
  call incpointer
  call decdata
.loopstart_21_1_7_1_8_1_3:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_8_1_3
  call incpointer
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_8_1_3
.loopend_21_1_7_1_8_1_3:
  call incdata
  call incdata
  call decpointer
.loopstart_21_1_7_1_8_1_7:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_8_1_7
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_8_1_7
.loopend_21_1_7_1_8_1_7:
  call incdata
  call incdata
  call decpointer
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_8_1
.loopend_21_1_7_1_8_1:
  call incdata
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_8
.loopend_21_1_7_1_8:
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call decdata
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call incdata
  call decpointer
  call decdata
  call decpointer
  call decpointer
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
.loopstart_21_1_7_1_31:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_31
  call decpointer
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
  jnz .loopstart_21_1_7_1_31
.loopend_21_1_7_1_31:
  call decpointer
  call outdata
  call decdata
  call decdata
  call decdata
  call decpointer
.loopstart_21_1_7_1_38:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_38
  call decdata
  call incpointer
  call outdata
.loopstart_21_1_7_1_38_3:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_38_3
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_38_3
.loopend_21_1_7_1_38_3:
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_38
.loopend_21_1_7_1_38:
  call incpointer
.loopstart_21_1_7_1_40:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_40
.loopstart_21_1_7_1_40_0:
  cmp byte [rdi], 0
  jz .loopend_21_1_7_1_40_0
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_40_0
.loopend_21_1_7_1_40_0:
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1_40
.loopend_21_1_7_1_40:

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7_1
.loopend_21_1_7_1:
  call incdata
  call incpointer
  call incpointer
  call decdata
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_1_7
.loopend_21_1_7:
  call incdata
  call decpointer
  call incdata
.loopstart_21_1_11:
  cmp byte [rdi], 0
  jz .loopend_21_1_11
  call decdata
  call decpointer
  call incdata
  call decpointer
  call incdata

  cmp byte [rdi], 0
  jnz .loopstart_21_1_11
.loopend_21_1_11:
  call incdata
  call incdata
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_1
.loopend_21_1:
  call decpointer
  call decpointer
  call decpointer
  call decpointer
.loopstart_21_6:
  cmp byte [rdi], 0
  jz .loopend_21_6
.loopstart_21_6_0:
  cmp byte [rdi], 0
  jz .loopend_21_6_0
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_6_0
.loopend_21_6_0:
  call incpointer
  call incpointer
.loopstart_21_6_3:
  cmp byte [rdi], 0
  jz .loopend_21_6_3
  call decdata
.loopstart_21_6_3_1:
  cmp byte [rdi], 0
  jz .loopend_21_6_3_1
  call incdata
  call incdata
  call incdata
  call decpointer
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_6_3_1
.loopend_21_6_3_1:
  call incdata
  call incpointer
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_6_3
.loopend_21_6_3:
  call incdata
  call incdata
.loopstart_21_6_6:
  cmp byte [rdi], 0
  jz .loopend_21_6_6
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_6_6
.loopend_21_6_6:
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_6
.loopend_21_6:
  call incpointer
.loopstart_21_8:
  cmp byte [rdi], 0
  jz .loopend_21_8
  call decdata
  call incpointer
  call incpointer
.loopstart_21_8_3:
  cmp byte [rdi], 0
  jz .loopend_21_8_3
.loopstart_21_8_3_0:
  cmp byte [rdi], 0
  jz .loopend_21_8_3_0
  call incpointer
  call incpointer
  call incpointer
.loopstart_21_8_3_0_3:
  cmp byte [rdi], 0
  jz .loopend_21_8_3_0_3
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3_0_3
.loopend_21_8_3_0_3:
  call incdata
.loopstart_21_8_3_0_5:
  cmp byte [rdi], 0
  jz .loopend_21_8_3_0_5
  call decdata
.loopstart_21_8_3_0_5_1:
  cmp byte [rdi], 0
  jz .loopend_21_8_3_0_5_1
  call decdata
  call incpointer
  call incpointer
  call incdata
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call decdata
.loopstart_21_8_3_0_5_1_9:
  cmp byte [rdi], 0
  jz .loopend_21_8_3_0_5_1_9
  call decdata
.loopstart_21_8_3_0_5_1_9_1:
  cmp byte [rdi], 0
  jz .loopend_21_8_3_0_5_1_9_1
  call incdata
  call incdata
  call incdata
  call decpointer
  call decpointer
.loopstart_21_8_3_0_5_1_9_1_5:
  cmp byte [rdi], 0
  jz .loopend_21_8_3_0_5_1_9_1_5
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3_0_5_1_9_1_5
.loopend_21_8_3_0_5_1_9_1_5:

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3_0_5_1_9_1
.loopend_21_8_3_0_5_1_9_1:
  call incdata
  call incpointer
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3_0_5_1_9
.loopend_21_8_3_0_5_1_9:
  call incdata
  call incdata
.loopstart_21_8_3_0_5_1_12:
  cmp byte [rdi], 0
  jz .loopend_21_8_3_0_5_1_12
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3_0_5_1_12
.loopend_21_8_3_0_5_1_12:

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3_0_5_1
.loopend_21_8_3_0_5_1:
  call incdata
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3_0_5
.loopend_21_8_3_0_5:
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3_0
.loopend_21_8_3_0:
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_8_3
.loopend_21_8_3:

  cmp byte [rdi], 0
  jnz .loopstart_21_8
.loopend_21_8:
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21
.loopend_21:
  call outdata
  call outdata
  call readdata
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
  mov rax, 1
  int 0x80
  ret
