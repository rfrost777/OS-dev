all:
	nasm -f elf32 kernel.asm -o ./bin/kasm.o
	gcc -m32 -c kernel.c -o ./bin/kc.o
	ld -m elf_i386 -T link.ld -o ./bin/kernel.bin ./bin/kasm.o ./bin/kc.o

run:
	qemu -kernel ./bin/kernel.bin

clean:
	rm ./bin/*
