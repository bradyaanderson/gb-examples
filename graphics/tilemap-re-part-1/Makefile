all: tilemap-re.gb

main.o: main.asm
	rgbasm -L -o main.o main.asm

tilemap-re.gb: main.o 
	rgblink -o tilemap-re.gb main.o
	rgbfix -v -p 0xFF tilemap-re.gb

clean:
	rm -f main.o tilemap-re.gb

.PHONY: all clean