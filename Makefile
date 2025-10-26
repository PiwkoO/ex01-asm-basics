TOOL=arm-none-eabi
CFLAGS=-mcpu=cortex-m3 -mthumb -O2 -g -ffreestanding -nostdlib
LDFLAGS=-T boards/qemu-mps2/linker.ld -Wl,--gc-sections -nostartfiles
SRC=$(wildcard src/*.c) $(wildcard asm/*.S) boards/qemu-mps2/startup.S
OUT=build/firmware.elf

all:
\tmkdir -p build
\t$(TOOL)-gcc $(CFLAGS) $(LDFLAGS) -o $(OUT) $(SRC)

size:
\t$(TOOL)-size $(OUT)

clean:
\trm -f $(OUT)
