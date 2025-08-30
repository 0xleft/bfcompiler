nasm test2.asm -f elf
ld -m elf_i386 -s -o test2 test2.o
rm test2.o
./test2