; Autostart:
; Place Shortcut to this file in Autostart (Win+R: "shell:startup")

; Start Explorer with Desktop activated (needs a Desktop Shortcut)
; #e::Run('D:\Installs\Desktop')

; Map F13 to KeePassXC
F13::Run("`"C:\Program Files\KeePassXC\KeePassXC.exe`"")
; Map F14 to Slack
F14::Run("`"\path\to\slack`"")

;;;;;; Fallbacks for Keyboards not configuring the following remaps

; Remap Capslock to Escape and AltGR+Capslock to Capslock
; Keychron: Caps->Esc and Fn+Caps->Caps, which only works if AutoHotKey is inactive (blocked by Capslock::Esc)
; Note: This mapping also overwrites the (unused) Windows Shortcut AltGR+Esc, which is switching Apps without Popup
Capslock::Esc
^!Capslock::Capslock
^!Esc::Capslock         ; needed for Keychron

; Remap left \| (<>|) to AltGR
SC056::RAlt
