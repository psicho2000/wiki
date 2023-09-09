Gibt es verschiedene onboard-Profile?
    https://www.reddit.com/r/MechanicalKeyboards/comments/jvls2z/question_about_via_qmk/
    https://www.reddit.com/r/MechanicalKeyboards/comments/mq3n12/via_how_to_add_more_than_4_layers/
    Oder am besten: die Mac-Profil-Ebenen misbrauchen

Layers
    Konfigurierbar ist lediglich der Hauptkey und Fn+Key.
    Shift+Key sowie AltGr+Key werden durch das OS vorgegeben.
    -> German ISO / US Int. ISO bleibt im selbst konfigurierten Windows-Treiber
    -> Media, Volume +/-, Mute: konfigurierbar, falls gewünscht
    ----
    -> Mic Mute: bedingt konfigurierbar, s. unten
    -> Powertoys run: auf andere Taste setzen (Fn+irgendwas)
    -> Calc
    -> Autohotkey: kann ersetzt werden
        * remap left \| (<>|) to AltGR
        * Remap Capslock to Escape
        * Slack (work) / Franz (privat)
        * KeePassXC
        * Win+E and MS Word Ctrl+W replacement: kann weg

Weitere Ideen
    Layer 2
        Crop:   anders belegen (Screenshot ist bereits Win+Shift+S)
    Layer 3
        Crop:   Print
        Mic:    Scroll Lock
        Light:  Break

Wo sind die weiteren Shortcuts dokumentiert?
    https://usevia.app/ > Load profile > Layer 1/3

Download Konfiguration
    https://keychron.de/products/keychron-k5-pro-qmk-via-wireless-custom-mechanical-keyboard-iso-layout-collection
    1. k5_pro_iso_rgb.json: Design/Draft Definition, needs to be added to VIA
    2. keychron_k5_pro.layout.json: Layout, can be loaded/configured/saved in VIA

QMK/VIA
    https://www.caniusevia.com/ (u.a. Read the docs, Start now)
    https://usevia.app/ (Web App)
        Funktioniert auf Dell nur, wenn Kabel direkt an den Laptop angeschlossen wird - nicht über die Docking Station
    https://github.com/the-via/releases (Electron App, nutzt Web App)
        Funktioniert nicht auf dem Dell
    https://www.caniusevia.com/docs/specification
    https://docs.qmk.fm/#/keycodes
    https://docs.keeb.io/via
    * QMK: Firmware
    * VIA: Layout definition

Microphone Mute
    In Windows: Win+Alt+K auf ein Makro setzen
        Momentan nur für Teams verfügbar, weitere Apps sollen folgen
        Benötigt Windows 11 Build 22494 (oder Windows 11 22H2)
    In Linux: F20

Firmware
    https://github.com/Keychron/qmk_firmware/tree/bluetooth_playground/keyboards/keychron/k5_pro

Keychron Doku
    https://www.keychron.com/blogs/archived/how-to-use-via-to-program-your-keyboard
    https://www.keychron.com/blogs/news/why-qmk-via-is-one-of-the-most-essential-features-for-a-custom-keyboard

Fragen
    * Wie kann man Programme starten? (ggf. mithilfe von Autohotkey und F13..F24)
    * Was bewirkt die NKRO-Taste?
