; Autostart:
; Place Shortcut to this file in Autostart (Win+R: "shell:startup")

; Start Explorer with Desktop activated (needs a Desktop Shortcut)
#e::Run('D:\Installs\Desktop')

; Fallback for Keyboards not configuring the following remaps
; Remap Capslock to Escape
Capslock::Esc
; Remap left \| (<>|) to AltGR
SC056::RAlt

; Map F13 to KeePassXC
F13::Run("`"C:\Program Files\KeePassXC\KeePassXC.exe`"")
; Map F14 to Franz
F14::Run("`"C:\Users\Markus\AppData\Local\Programs\franz\Franz.exe`"")

; Map Ctrl+Alt+[ to KeePassXC
^![::Run("`"C:\Program Files\KeePassXC\KeePassXC.exe`"")
; Map Ctrl+Alt+] to Slack
^!]::Run("`"C:\Users\Markus\AppData\Local\Programs\franz\Franz.exe`"")
