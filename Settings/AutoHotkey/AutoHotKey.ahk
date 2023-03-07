; Autostart:
; Place Shortcut to this file in Autostart (Win+R: "shell:startup")

; Remap Capslock to Escape
Capslock::Esc

; Remap left \| (<>|) to AltGR
SC056::RAlt

; Win-E starts Explorer with drive D: active and brings it to front
#e::
    run explorer.exe D:
    WinActivate, D:\
;return

;$WheelRight::FastForward()
;$WheelLeft::Rewind()
;
;
;FastForward() {
;    WinGetActiveTitle, Title
;    if (InStr(Title, "VLC media player")) {
;        Send +{Right}
;    } else if (InStr(Title, "Microsoft Edge") or InStr(Title, "Google Chrome") or InStr(Title, "Firefox")) {
;        Send {Right}
;    } else {
;        Send {WheelRight}
;    }
;}
;
;Rewind() {
;    WinGetActiveTitle, Title
;    if (InStr(Title, "VLC media player")) {
;        Send +{Left}
;    } else if (InStr(Title, "Microsoft Edge") or InStr(Title, "Google Chrome") or InStr(Title, "Firefox")) {
;        Send {Left}
;    } else {
;        Send {WheelLeft}
;    }
;}

; Map Ctrl+W to select whole word in Microsoft Word
#IfWinActive ahk_class OpusApp
    ^w::SendInput ^{Left}+^{Right}
#IfWinActive

; Map Ctrl+Alt+] to KeePassXC
^!]::run "C:\Program Files\KeePassXC\KeePassXC.exe"
