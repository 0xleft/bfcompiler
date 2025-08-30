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
  call incpointer
  call incdata
  call incpointer
  call incdata
  call incdata
  call incdata
  call incpointer
  call incdata
  call incdata
  call incdata
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incdata
  call incdata
  call incdata
.loopstart_21:
  cmp byte [rdi], 0
  jz .loopend_21
  call incpointer
  call readdata
  call incdata
  call incpointer
  call incdata
  call incdata
  call incdata
  call incdata
.loopstart_21_8:
  cmp byte [rdi], 0
  jz .loopend_21_8
  call incpointer
  call incdata
  call incdata
  call incdata
  call incdata
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_8
.loopend_21_8:
  call incpointer
.loopstart_21_10:
  cmp byte [rdi], 0
  jz .loopend_21_10
  call decpointer
  call decpointer
.loopstart_21_10_2:
  cmp byte [rdi], 0
  jz .loopend_21_10_2
  call decdata
.loopstart_21_10_2_1:
  cmp byte [rdi], 0
  jz .loopend_21_10_2_1
  call decdata
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_10_2_1
.loopend_21_10_2_1:

  cmp byte [rdi], 0
  jnz .loopstart_21_10_2
.loopend_21_10_2:
  call incpointer
.loopstart_21_10_4:
  cmp byte [rdi], 0
  jz .loopend_21_10_4
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_10_4
.loopend_21_10_4:
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_10
.loopend_21_10:
  call decpointer
  call decpointer
.loopstart_21_13:
  cmp byte [rdi], 0
  jz .loopend_21_13
  call incpointer
  call incdata
  call incpointer
  call incdata
  call incpointer
  call incpointer
  call incdata
  call incpointer
  call incdata
.loopstart_21_13_9:
  cmp byte [rdi], 0
  jz .loopend_21_13_9
  call decpointer
  call decpointer
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_9
.loopend_21_13_9:
  call decpointer
  call incdata
  call incpointer
  call incpointer
.loopstart_21_13_14:
  cmp byte [rdi], 0
  jz .loopend_21_13_14
  call incdata
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_14
.loopend_21_13_14:
  call decpointer
.loopstart_21_13_16:
  cmp byte [rdi], 0
  jz .loopend_21_13_16
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_16
.loopend_21_13_16:
  call incpointer
  call incdata
.loopstart_21_13_19:
  cmp byte [rdi], 0
  jz .loopend_21_13_19
.loopstart_21_13_19_0:
  cmp byte [rdi], 0
  jz .loopend_21_13_19_0
  call incpointer
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_19_0
.loopend_21_13_19_0:
  call incpointer
  call incpointer
  call incdata
.loopstart_21_13_19_4:
  cmp byte [rdi], 0
  jz .loopend_21_13_19_4
  call decpointer
  call decpointer
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_19_4
.loopend_21_13_19_4:
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_13_19
.loopend_21_13_19:
  call incdata
  call decpointer
  call incdata
  call incpointer
  call incpointer
  call incpointer
  call decdata
.loopstart_21_13_27:
  cmp byte [rdi], 0
  jz .loopend_21_13_27
  call decpointer
  call decpointer
  call incdata
.loopstart_21_13_27_3:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_3
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_3
.loopend_21_13_27_3:
  call incpointer
  call incpointer
  call incdata
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call incdata
  call decpointer
  call decdata
  call decdata
  call decdata
  call decdata
  call decdata
  call decdata
  call decdata
  call decdata
.loopstart_21_13_27_22:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decpointer
  call incdata
.loopstart_21_13_27_22_6:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_6
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_6
.loopend_21_13_27_22_6:
  call incpointer
  call incdata
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_6:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_6
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_6
.loopend_21_13_27_22_15_6:
  call decpointer
  call decdata
  call decpointer
  call decdata
  call decpointer
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decdata
  call decdata
  call decdata
  call decdata
.loopstart_21_13_27_22_15_20:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20
  call decpointer
  call decpointer
  call decpointer
  call decdata
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11
  call decpointer
  call decpointer
  call decpointer
  call incdata
.loopstart_21_13_27_22_15_20_11_4:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_4
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_4
.loopend_21_13_27_22_15_20_11_4:
  call incpointer
  call incdata
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call decdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call decdata
  call decpointer
  call incdata
.loopstart_21_13_27_22_15_20_11_14_7:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_7
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_7
.loopend_21_13_27_22_15_20_11_14_7:
  call decpointer
  call incdata
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_3:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_3
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_3
.loopend_21_13_27_22_15_20_11_14_17_3:
  call incpointer
  call incpointer
  call decdata
  call decpointer
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_6:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_6
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_6
.loopend_21_13_27_22_15_20_11_14_17_15_6:
  call decpointer
  call incdata
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call incdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call incdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_5:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_5
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_5
.loopend_21_13_27_22_15_20_11_14_17_15_17_5:
  call decpointer
  call decdata
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11
  call decpointer
  call decpointer
  call incdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_3:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_3
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_3
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_3:
  call incpointer
  call incpointer
  call decdata
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incdata
  call decpointer
  call decdata
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14
  call incpointer
  call incpointer
  call incdata
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_5:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_5
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_5
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_5:
  call incpointer
  call incdata
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call incdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_5:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_5
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_5
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_5:
  call decpointer
  call incdata
  call decpointer
  call incdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12
  call incpointer
  call incpointer
  call decdata
  call decpointer
  call decdata
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_3:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_3
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_3
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_3:
  call decpointer
  call incdata
  call decpointer
  call incdata
  call incdata
  call incdata
  call incdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_11:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_11
  call decpointer
  call decdata
  call decdata
  call decdata
  call decdata
  call decdata
  call decdata
  call decdata
  call decdata
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_11
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_11:
  call incdata
  call incdata
  call decpointer
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15
  call decpointer
  call decpointer
  call incdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_3:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_3
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_3
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_3:
  call incpointer
  call incpointer
  call decdata
  call decpointer
  call decdata
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decpointer
  call decdata
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call incdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_5:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_5
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_5
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_5:
  call incpointer
  call incdata
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13
  call decpointer
  call decpointer
  call incdata
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13_6:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13_6
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13_6
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13_6:
  call decpointer
  call incdata
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decdata
.loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13_15:
  cmp byte [rdi], 0
  jz .loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13_15
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call decdata
  call decpointer
  call decpointer
  call decpointer
  call decdata
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13_15
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13_15:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11_13:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14_11:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15_14:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7_15:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12_7:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15_12:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6_15:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14_6:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14_14
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14_14:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11_14
.loopend_21_13_27_22_15_20_11_14_17_15_17_11_14:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17_11
.loopend_21_13_27_22_15_20_11_14_17_15_17_11:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15_17
.loopend_21_13_27_22_15_20_11_14_17_15_17:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17_15
.loopend_21_13_27_22_15_20_11_14_17_15:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14_17
.loopend_21_13_27_22_15_20_11_14_17:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11_14
.loopend_21_13_27_22_15_20_11_14:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20_11
.loopend_21_13_27_22_15_20_11:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15_20
.loopend_21_13_27_22_15_20:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22_15
.loopend_21_13_27_22_15:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27_22
.loopend_21_13_27_22:

  cmp byte [rdi], 0
  jnz .loopstart_21_13_27
.loopend_21_13_27:

  cmp byte [rdi], 0
  jnz .loopstart_21_13
.loopend_21_13:
  call incpointer
.loopstart_21_15:
  cmp byte [rdi], 0
  jz .loopend_21_15
  call incpointer
.loopstart_21_15_1:
  cmp byte [rdi], 0
  jz .loopend_21_15_1
.loopstart_21_15_1_0:
  cmp byte [rdi], 0
  jz .loopend_21_15_1_0
.loopstart_21_15_1_0_0:
  cmp byte [rdi], 0
  jz .loopend_21_15_1_0_0
  call decpointer
  call decpointer
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_15_1_0_0
.loopend_21_15_1_0_0:
  call incpointer
  call incdata
  call incpointer
  call incpointer
.loopstart_21_15_1_0_5:
  cmp byte [rdi], 0
  jz .loopend_21_15_1_0_5
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_15_1_0_5
.loopend_21_15_1_0_5:
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_21_15_1_0
.loopend_21_15_1_0:
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_15_1
.loopend_21_15_1:
  call incpointer
  call incpointer
  call incpointer
  call incdata
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incdata
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_21_15
.loopend_21_15:
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_21
.loopend_21:
  call decpointer
.loopstart_23:
  cmp byte [rdi], 0
  jz .loopend_23
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_23
.loopend_23:
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call decpointer
  call incdata
  call incdata
  call decpointer
  call incdata
  call incdata
  call incdata
  call decpointer
  call incdata
  call incdata
  call incdata
.loopstart_41:
  cmp byte [rdi], 0
  jz .loopend_41
.loopstart_41_0:
  cmp byte [rdi], 0
  jz .loopend_41_0
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_41_0
.loopend_41_0:
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
.loopstart_41_15:
  cmp byte [rdi], 0
  jz .loopend_41_15
  call decpointer
  call decpointer
  call incdata
  call incdata
  call incdata
  call incdata
  call incpointer
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incdata
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_15
.loopend_41_15:
  call decpointer
  call decdata
  call decpointer
  call decpointer
.loopstart_41_20:
  cmp byte [rdi], 0
  jz .loopend_41_20
  call decdata
.loopstart_41_20_1:
  cmp byte [rdi], 0
  jz .loopend_41_20_1
  call decpointer
  call incdata
  call incpointer
  call incpointer
  call outdata
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_20_1
.loopend_41_20_1:

  cmp byte [rdi], 0
  jnz .loopstart_41_20
.loopend_41_20:
  call decpointer
  call decpointer
  call decpointer
  call decpointer
.loopstart_41_25:
  cmp byte [rdi], 0
  jz .loopend_41_25
  call decdata
.loopstart_41_25_1:
  cmp byte [rdi], 0
  jz .loopend_41_25_1
  call decdata
.loopstart_41_25_1_1:
  cmp byte [rdi], 0
  jz .loopend_41_25_1_1
  call incpointer
  call incdata
  call decpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_25_1_1
.loopend_41_25_1_1:
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_41_25_1
.loopend_41_25_1:
  call incpointer
  call incpointer
  call incpointer
  call incpointer
  call incpointer
.loopstart_41_25_7:
  cmp byte [rdi], 0
  jz .loopend_41_25_7
  call outdata
.loopstart_41_25_7_1:
  cmp byte [rdi], 0
  jz .loopend_41_25_7_1
  call incpointer

  cmp byte [rdi], 0
  jnz .loopstart_41_25_7_1
.loopend_41_25_7_1:

  cmp byte [rdi], 0
  jnz .loopstart_41_25_7
.loopend_41_25_7:
  call decpointer
  call decpointer
.loopstart_41_25_10:
  cmp byte [rdi], 0
  jz .loopend_41_25_10
  call decpointer
  call incdata
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_25_10
.loopend_41_25_10:
  call incpointer
  call incpointer
  call incpointer
.loopstart_41_25_14:
  cmp byte [rdi], 0
  jz .loopend_41_25_14
  call decpointer
  call decpointer
  call incdata
  call incdata
.loopstart_41_25_14_4:
  cmp byte [rdi], 0
  jz .loopend_41_25_14_4
  call decpointer
  call incdata
  call incpointer
  call decdata
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_25_14_4
.loopend_41_25_14_4:
  call incpointer
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_25_14
.loopend_41_25_14:
  call decpointer
  call decpointer
.loopstart_41_25_17:
  cmp byte [rdi], 0
  jz .loopend_41_25_17
  call decdata
  call incpointer
  call incdata
  call decpointer
.loopstart_41_25_17_4:
  cmp byte [rdi], 0
  jz .loopend_41_25_17_4
  call decpointer
  call incdata
  call incdata
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_25_17_4
.loopend_41_25_17_4:

  cmp byte [rdi], 0
  jnz .loopstart_41_25_17
.loopend_41_25_17:
  call decpointer
  call decpointer
  call decpointer
.loopstart_41_25_21:
  cmp byte [rdi], 0
  jz .loopend_41_25_21
  call decpointer
  call incdata
  call incpointer
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_25_21
.loopend_41_25_21:
  call decpointer
  call decpointer
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_41_25
.loopend_41_25:
  call incpointer
  call incpointer
  call incdata
  call incpointer
  call incpointer
  call incpointer
  call decdata
  call decdata
.loopstart_41_34:
  cmp byte [rdi], 0
  jz .loopend_41_34
  call decpointer
  call incdata
  call incpointer
  call decdata
  call decdata
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_34
.loopend_41_34:
  call decpointer
  call outdata
  call incpointer
  call incpointer
.loopstart_41_39:
  cmp byte [rdi], 0
  jz .loopend_41_39
.loopstart_41_39_0:
  cmp byte [rdi], 0
  jz .loopend_41_39_0
  call decdata

  cmp byte [rdi], 0
  jnz .loopstart_41_39_0
.loopend_41_39_0:
  call decpointer
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_41_39
.loopend_41_39:
  call decpointer

  cmp byte [rdi], 0
  jnz .loopstart_41
.loopend_41:
.loopstart_42:
  cmp byte [rdi], 0
  jz .loopend_42
  call decdata
  call outdata
  call readdata
  call outdata
  call outdata
  call outdata

  cmp byte [rdi], 0
  jnz .loopstart_42
.loopend_42:

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
