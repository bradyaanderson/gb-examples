all: tilemap-re.gb

main.o: main.asm
	rgbasm -L -o main.o main.asm

background.2bpp: background.png
	rgbgfx -o background.2bpp background.png

tilemap-re.gb: main.o background.2bpp
	rgblink -o tilemap-re.gb main.o
	rgbfix -v -p 0xFF tilemap-re.gb

clean:
	rm -f main.o tilemap-re.gb background.2bpp

.PHONY: all clean