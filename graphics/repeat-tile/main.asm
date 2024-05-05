INCLUDE "hardware.inc"

SECTION "Header", ROM0[$100]

    jp EntryPoint

    ds $150 - @, 0 ; Make room for the header

EntryPoint:
    ; Shut down audio circuitry
    ld a, 0
    ld [rNR52], a

    ; Wait for VBlank to turn the LCD off safely
WaitVBlank:
    ld a, [rLY]
    cp 144
    jp c, WaitVBlank

    ; Turn the LCD off
    ld a, 0
    ld [rLCDC], a

    ; Copy the tile data
    ld de, Tile
    ld hl, $9000 ; Starting address in VRAM for tile data
    ld bc, 16 ; 16 bytes per tile
CopyTile:
    ld a, [de]
    ld [hli], a
    inc de
    dec bc
    ld a, b
    or a, c
    jp nz, CopyTile

    ; Fill the tilemap with the same tile
    ld hl, $9800 ; Start of background tilemap in VRAM
    ld bc, 32*32 ; The size of the background tilemap
FillScreen:
    ld a, 0 ; Always use tile 0
    ld [hli], a
    dec bc
    ld a, b
    or a, c
    jp nz, FillScreen

    ; Turn the LCD on
    ld a, LCDCF_ON | LCDCF_BGON
    ld [rLCDC], a

    ; Set background palette
    ld a, %11100100
    ld [rBGP], a

Done:
    jp Done
