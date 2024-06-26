INCLUDE "hardware.inc"

SECTION "Tilemap Data", ROM0

Tilemap::
  ; The tilemap is 32x32 tiles in size. However, only 20x18 tiles are visible on the screen at once.
  ; The first 20 bytes in a row are visible on the screen without scrolling. The next 12 are off screen, so we'll just set them to 0.
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
  db $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01,  0,0,0,0,0,0,0,0,0,0,0,0
  db $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00, $01, $00,  0,0,0,0,0,0,0,0,0,0,0,0
TilemapEnd::