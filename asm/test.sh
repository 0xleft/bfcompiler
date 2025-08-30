bfcompiler ../test/test22.bf 100000
nasm test22.asm -f elf64
ld -m elf_x86_64 -s -o test22 test22.o
rm test22.o
./test22