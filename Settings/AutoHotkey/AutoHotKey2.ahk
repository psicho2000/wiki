; Autostart:
; Place Shortcut to this file in Autostart (Win+R: "shell:startup")

; Remap Capslock to Escape
Capslock::Esc

; Remap left \| (<>|) to AltGR
SC056::RAlt

; Win-E starts Explorer with drive D: active and brings it to front
#e::{
        Run("explorer.exe D:")
        Sleep 700
        WinActivate("D:\")
    }

; Map Ctrl+W to select whole word in Microsoft Word
#HotIf WinActive("ahk_class OpusApp", )
    ^w::    SendInput("^{Left}+^{Right}")
#HotIf

; Map Ctrl+Alt+[ to Slack
^![::Run("`"C:\Program Files\Slack\slack.exe`"")
; Map Ctrl+Alt+] to KeePassXC
^!]::Run("`"C:\Program Files\KeePassXC\KeePassXC.exe`"")
