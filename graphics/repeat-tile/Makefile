all: repeat-tile.gb

main.o: main.asm
	rgbasm -L -o main.o main.asm

tile.o: tile.asm
	rgbasm -L -o tile.o tile.asm

repeat-tile.gb: main.o tile.o
	rgblink -o repeat-tile.gb main.o tile.o
	rgbfix -v -p 0xFF repeat-tile.gb

clean:
	rm -f main.o tile.o repeat-tile.gb

.PHONY: all clean