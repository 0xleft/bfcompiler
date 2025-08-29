nasm test.asm -f elf
ld -m elf_i386 -s -o test test.o
rm test.o
./test