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