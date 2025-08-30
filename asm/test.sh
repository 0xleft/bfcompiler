stack run > temp.asm
nasm temp.asm -f elf64
ld -m elf_x86_64 -s -o temp temp.o
rm temp.o
./temp