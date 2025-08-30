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
  call incpointer
  call incpointer
  call incpointer
  call decdata
  call incpointer
  call incdata
.loopstart0_6:
  cmp byte [rdi], 0
  jz .loopend0_6
.loopstart1_0:
  cmp byte [rdi], 0
  jz .loopend1_0
.loopstart2_0:
  cmp byte [rdi], 0
  jz .loopend2_0
  call decpointer
  call decpointer
  call incdata
  call incpointer
  call incdata
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart2_0
.loopend2_0:
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
.loopstart2_7:
  cmp byte [rdi], 0
  jz .loopend2_7
  call decpointer
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
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart2_7
.loopend2_7:
  call decpointer
  call decpointer
  call decdata
  call outdata
.loopstart2_12:
  cmp byte [rdi], 0
  jz .loopend2_12
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart2_12
.loopend2_12:
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart1_0
.loopend1_0:
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call outdata
.loopstart1_12:
  cmp byte [rdi], 0
  jz .loopend1_12
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart1_12
.loopend1_12:
  call incpointer
  call incpointer
  call incpointer
  call incdata
  call incdata
  call decpointer
.loopstart1_19:
  cmp byte [rdi], 0
  jz .loopend1_19
.loopstart2_0:
  cmp byte [rdi], 0
  jz .loopend2_0
  call decdata
.loopstart3_1:
  cmp byte [rdi], 0
  jz .loopend3_1
.loopstart4_0:
  cmp byte [rdi], 0
  jz .loopend4_0
  call incpointer
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart4_0
.loopend4_0:
  call decpointer
  call decpointer
  call decpointer
  call decdata
.loopstart4_5:
  cmp byte [rdi], 0
  jz .loopend4_5
  call incdata
  call incpointer
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart4_5
.loopend4_5:
  call decpointer
  call decpointer
  call decpointer
.loopstart4_9:
  cmp byte [rdi], 0
  jz .loopend4_9
  call decpointer
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart4_9
.loopend4_9:
  call incdata
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart3_1
.loopend3_1:
  call decpointer
  call decdata
.loopstart3_4:
  cmp byte [rdi], 0
  jz .loopend3_4
  call incdata
  call incpointer
  call incdata
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
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart3_4
.loopend3_4:
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart2_0
.loopend2_0:
  call incpointer
  call incpointer
  call incpointer
.loopstart2_4:
  cmp byte [rdi], 0
  jz .loopend2_4
.loopstart3_0:
  cmp byte [rdi], 0
  jz .loopend3_0
  call incpointer
  call incdata
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart3_0
.loopend3_0:
  call incpointer
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart2_4
.loopend2_4:
  call decpointer
  call decpointer
.loopstart2_7:
  cmp byte [rdi], 0
  jz .loopend2_7
  call decdata
.loopstart3_1:
  cmp byte [rdi], 0
  jz .loopend3_1
  call decpointer
  call incdata
  call incdata
  call incpointer
  call decdata
.loopstart4_5:
  cmp byte [rdi], 0
  jz .loopend4_5
  call decpointer
  call incdata
  call incdata
  call incpointer
  call decdata
.loopstart5_5:
  cmp byte [rdi], 0
  jz .loopend5_5
  call decpointer
  call incdata
  call incdata
  call incpointer
  call decdata
.loopstart6_5:
  cmp byte [rdi], 0
  jz .loopend6_5
  call decpointer
  call incdata
  call incdata
  call incpointer
  call decdata
.loopstart7_5:
  cmp byte [rdi], 0
  jz .loopend7_5
  call decpointer
.loopstart8_1:
  cmp byte [rdi], 0
  jz .loopend8_1
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart8_1
.loopend8_1:
  call incpointer
  call decdata
.loopstart8_4:
  cmp byte [rdi], 0
  jz .loopend8_4
  call decpointer
  call incdata
  call incdata
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart8_4
.loopend8_4:
  call incpointer
  call incpointer
.loopstart8_7:
  cmp byte [rdi], 0
  jz .loopend8_7
  call decpointer
  call incdata
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart8_7
.loopend8_7:
  call incpointer
.loopstart8_9:
  cmp byte [rdi], 0
  jz .loopend8_9
  call decdata
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart8_9
.loopend8_9:
  call decpointer
  call incdata
  call incdata
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart7_5
.loopend7_5:

  cmp byte [rdi], 0
  jnz .loopstart6_5
.loopend6_5:

  cmp byte [rdi], 0
  jnz .loopstart5_5
.loopend5_5:

  cmp byte [rdi], 0
  jnz .loopstart4_5
.loopend4_5:

  cmp byte [rdi], 0
  jnz .loopstart3_1
.loopend3_1:
  call decpointer
  call incdata
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart2_7
.loopend2_7:
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart1_19
.loopend1_19:
  call incpointer
.loopstart1_21:
  cmp byte [rdi], 0
  jz .loopend1_21
  call incpointer
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart1_21
.loopend1_21:
  call decpointer
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart0_6
.loopend0_6:

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