# German ISO → US ANSI → QMK keycode mapping

QMK keycodes are named by US-ANSI physical position. The table maps
(German ISO de-DE key → its US slot → the QMK code to send). On a German
OS the scancode is interpreted as the German character for that slot, so
ship the US-position code and the OS renders the German glyph.

## Number row

| German key | US ANSI position | QMK keycode |
|---|---|---|
| ^ / ° (dead) | ` | KC_GRV |
| 1 | 1 | KC_1 |
| 2 | 2 | KC_2 |
| 3 | 3 | KC_3 |
| 4 | 4 | KC_4 |
| 5 | 5 | KC_5 |
| 6 | 6 | KC_6 |
| 7 | 7 | KC_7 |
| 8 | 8 | KC_8 |
| 9 | 9 | KC_9 |
| 0 | 0 | KC_0 |
| ß / ? | - | KC_MINS |
| ´ (dead) / ` | = | KC_EQL |

## Top letter row (QWERTZ)

| German key | US ANSI position | QMK keycode |
|---|---|---|
| Q | Q | KC_Q |
| W | W | KC_W |
| E | E | KC_E |
| R | R | KC_R |
| T | T | KC_T |
| Z | Y | KC_Y |
| U | U | KC_U |
| I | I | KC_I |
| O | O | KC_O |
| P | P | KC_P |
| Ü | [ | KC_LBRC |
| + / * | ] | KC_RBRC |

## Home row

| German key | US ANSI position | QMK keycode |
|---|---|---|
| A | A | KC_A |
| S | S | KC_S |
| D | D | KC_D |
| F | F | KC_F |
| G | G | KC_G |
| H | H | KC_H |
| J | J | KC_J |
| K | K | KC_K |
| L | L | KC_L |
| Ö | ; | KC_SCLN |
| Ä | ' | KC_QUOT |
| # / ' | (extra ISO key) | KC_NUHS |

## Bottom row

| German key | US ANSI position | QMK keycode |
|---|---|---|
| Y | Z | KC_Z |
| X | X | KC_X |
| C | C | KC_C |
| V | V | KC_V |
| B | B | KC_B |
| N | N | KC_N |
| M | M | KC_M |
| , | , | KC_COMM |
| . | . | KC_DOT |
| - | / | KC_SLSH |
| < > \| | (extra ISO key) | KC_NUBS |

## Modifiers + common keys

| German key | US ANSI position | QMK keycode |
|---|---|---|
| Shift | Shift | KC_LSFT / KC_RSFT |
| Alt Gr | Right Alt | KC_RALT |
| Alt | Left Alt | KC_LALT |
| Strg | Ctrl | KC_LCTL / KC_RCTL |
| Win / Cmd | GUI | KC_LGUI / KC_RGUI |
| Leertaste | Space | KC_SPC (or KC_SPACE) |
| Enter | Enter | KC_ENT (or KC_ENTER) |
| Esc | Esc | KC_ESC |
| Tab | Tab | KC_TAB |
| Rücktaste | Backspace | KC_BSPC |
| Entf | Delete | KC_DEL |

## German-specific notes

- **QWERTZ swap:** QMK sends US scancodes, so on a German OS
  **KC_Y types "z"** and **KC_Z types "y"**. The OS does the swap, QMK does not.
- **Umlauts are not separate codes** — they live on US symbol positions:
  KC_QUOT → ä, KC_SCLN → ö, KC_LBRC → ü, KC_RBRC → +, KC_MINS → ß,
  KC_SLSH → -, KC_NUBS → <, KC_GRV → ^.
- **AltGr = KC_RALT.** Holding it gives the extra German symbols on a full
  board: `@` (Q), `\` (ß/^-slot), `|` (NUBS), `~`, `€` (E), `² ³`, `{[` `]}`.
  Combo macros for these use KC_RALT.
- **Ortholinear boards** (like the Lily58) have no ISO extra keys and no
  dedicated number row, so the physical ISO layout cannot be reproduced —
  assign the US-position codes and the German OS renders the correct
  characters; put umlauts/ß/numbers/symbols on layers.
- **Stock QMK always sends ANSI scancodes.** A full German layout in QMK
  itself requires the unofficial `german` keymap fork, not upstream QMK.