all: tilemap-re.gb

main.o: main.asm
	rgbasm -L -o main.o main.asm

background.2bpp: background.png
	rgbgfx -o background.2bpp background.png

tilemap.o: tilemap.asm
	rgbasm -L -o tilemap.o tilemap.asm

tilemap-re.gb: background.2bpp main.o tilemap.o
	rgblink -o tilemap-re.gb main.o tilemap.o
	rgbfix -v -p 0xFF tilemap-re.gb

clean:
	rm -f main.o tilemap.o background.2bpp tilemap-rf.gb

.PHONY: all clean