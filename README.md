# bfcompiler

A compiler from brainf*ck to assembly

## Install

## Prerequisites

Install [Stack](https://docs.haskellstack.org/en/stable/install_and_upgrade/#install-stack).
Install [NASM](https://www.nasm.us/pub/nasm/releasebuilds/) or another assembler to compile the generated assembly code.

```bash
git clone https://github.com/0xleft/bfcompiler
cd bfcompiler
stack install
```

## Usage

```bash
bfcompiler <source.bf> <buffer length> [
  optional -o for outputting the assembly into terminal
  optional -c for choosing a specific architecture available (x86_64, i386)
]
```

### Example usage

> [!CAUTION]
> This assumes you have installed NASM and have it in your PATH.

```bash
bfcompiler test/hello.bf 1000 -c i386 # generates hello.asm
nasm -f elf32 hello.asm -o hello.o # generates hello.o
ld hello.o -o hello -m elf_i386 # generates hello
./hello
```

## Examples

Many examples can be found on [brainfuck.org](https://www.brainfuck.org/).
Here are a few demos

### Conways game of life 

https://github.com/user-attachments/assets/c8f7374f-df68-4e44-ba7c-9055a01e1dac

### Sierpinski triangle

https://github.com/user-attachments/assets/8f6d91d7-7024-4de7-b716-5aeaa9de0ed4

### Rot 13 cypther

https://github.com/user-attachments/assets/b75e12a9-9d6a-4891-aec2-f7fffd32756a

### Tic-Tac-Toe

https://github.com/user-attachments/assets/9762d82c-7f19-4019-b3ce-b661830ac681

### Calculating the golden ratio

https://github.com/user-attachments/assets/973113ce-e79b-402e-a2a8-b0fe5f31bb63
