; sprite-xor.asm — XOR sprite plot stub (Z80)
; hl = sprite data, de = screen address, bc = height (rows)
; Pixel Artist provides sprite data; Code Engineer wires addresses

        SECTION code_user

        PUBLIC plot_sprite_xor

plot_sprite_xor:
        ; TODO: row loop, XOR (hl) with (de), advance hl/de
        ret
