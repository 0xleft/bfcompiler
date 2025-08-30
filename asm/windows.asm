section .data
    msg db "Hello world!", 0

section .text
    global _main
    extern _ExitProcess@4

_main:
    xor eax, eax
    call _ExitProcess@4