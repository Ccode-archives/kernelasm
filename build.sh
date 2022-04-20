nasm -f elf32 kernel.asm -o kasm.o
nasm -f elf32 stdio.asm -o stdio.o
ld -m elf_i386 -T link.ld -o kernel.iso kasm.o stdio.o
