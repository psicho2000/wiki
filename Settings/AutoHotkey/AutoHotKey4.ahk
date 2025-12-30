; Autostart:
; Place Shortcut to this file in Autostart (Win+R: "shell:startup")

; Apps (on Keyboard, map spare keys to F13-F15)
F13::Run("`"\path\to\obsidian`"")
F14::Run("`"\path\to\keepass`"")
F15::Run("`"\path\to\chat-app`"")
; Could use F16 for Calc, if Keyboard does not offer a mapping

; Umlauts and Euro
F17::ß  ; on Keyboard, map Fn+- to F17
F18::ü  ; on Keyboard, map Fn+[ to F18
F19::ö  ; on Keyboard, map Fn+; to F19
F20::ä  ; on Keyboard, map Fn+' to F20
F21::€  ; on Keyboard, map Fn+5 to F21

;;;;;; Fallbacks for Keyboards not configuring the following remaps

; Remap Capslock to Escape and AltGR+Capslock to Capslock
; Keychron: Caps->Esc and Fn+Caps->Caps, which only works if AutoHotKey is inactive (blocked by Capslock::Esc)
; Note: This mapping also overwrites the (unused) Windows Shortcut AltGR+Esc, which is switching Apps without Popup
Capslock::Esc
^!Capslock::Capslock
^!Esc::Capslock         ; needed for Keychron
