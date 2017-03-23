CC=nasm
CFLAGS=-Wall

go:
	./MIPS

compilar:
	
	nasm -f elf64 -o MIPS.o MIPS.asm
	ld -o MIPS MIPS.o
	gdb MIPS
clean:
	rm -f MIPS MIPS.o
