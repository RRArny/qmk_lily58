set positional-arguments

default_kb:= "keyboards/splitkb/aurora/lily58/keymaps/rrarny/keymap.json"

draw KEYBOARD=default_kb:
    @echo 'Creating SVG for {{KEYBOARD}}...'
    mkdir -p ./drawings
    keymap parse -q {{KEYBOARD}} | keymap draw -o  {{"./drawings/" + file_stem(KEYBOARD) + ".svg"}} -
