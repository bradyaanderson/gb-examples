all: first-tilemap.gb

main.o: main.asm
	rgbasm -L -o main.o main.asm

tiles.o: tiles.asm
	rgbasm -L -o tiles.o tiles.asm

tilemap.o: tilemap.asm
	rgbasm -L -o tilemap.o tilemap.asm

first-tilemap.gb: main.o tiles.o tilemap.o
	rgblink -o first-tilemap.gb main.o tiles.o tilemap.o
	rgbfix -v -p 0xFF first-tilemap.gb

clean:
	rm -f main.o tiles.o tilemap.o first-tilemap.gb

.PHONY: all clean