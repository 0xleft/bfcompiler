nasm test2.asm -f elf64
ld -m elf_x86_64 -s -o test test2.o
rm test.o
./test2