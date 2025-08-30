nasm test.asm -f elf64
ld -m elf_x86_64 -s -o test test.o
rm test.o
./test