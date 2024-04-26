## Anleitung Via
1. Connect Keyboard using USB
2. https://usevia.app/
3. Settings > Show Design Tab: x
4. Design > Load > `k5_pro_iso_rgb.json`
5. Settings > Show Design Tab: o (off)
6. Configure > Authorize device + > Select device

Notes:
* Needs to be done for every browser separately.
* Funktioniert auf Dell nur, wenn Kabel direkt an den Laptop angeschlossen wird - nicht über die Docking Station

## Gibt es verschiedene onboard-Profile?
* https://www.reddit.com/r/MechanicalKeyboards/comments/jvls2z/question_about_via_qmk/
* https://www.reddit.com/r/MechanicalKeyboards/comments/mq3n12/via_how_to_add_more_than_4_layers/
* Oder: die Mac-Profil-Ebenen missbrauchen

## Layers
* Konfigurierbar ist lediglich der Hauptkey und Fn+Key.
* Shift+Key sowie AltGr+Key werden durch das OS vorgegeben.
* Konsequenzen
  * German ISO / US Int. ISO bleibt im selbst konfigurierten Windows-Treiber
  * Media, Volume +/-, Mute: konfigurierbar, falls gewünscht
  * Mic Mute: bedingt konfigurierbar, s. unten

## Microphone Mute
* In Windows: Win+Alt+K auf ein Makro setzen
  * Momentan nur für Teams verfügbar, weitere Apps sollen folgen
  * Benötigt Windows 11 Build 22494 (oder Windows 11 22H2)
* In Linux: F20

## Wie kann man Programme starten?
1. Konfiguriere `F13`-`F24` auf eine Taste
2. In AutoHotKey:
   ```
   F13::Run("`"C:\Path\to\my programm.exe`"")
   ```

## Aktuelle Konfiguration
* Keys.xlsx
  * Sheet "Default": `keychron_k5_pro.layout.json`
    * Erhält man per Factory Reset: `Fn+J+Z` (4 Sek.) bis alle Backlights aufblinken.
  * Sheet "Custom": `keychron_k5_pro_custom.layout.json`
* Noch verfügbare Keys in Layer 2
  * Crop:  kann anders belegt werden (Screenshot ist bereits `Win+Shift+S`)
  * X:     frei

_ACHTUNG: Die Layouts (VIA) sind eng verknüpft mit der Firmware (QMK). Bei einem Firmware Change müssen ggf. die Layouts erneuert werden!_

## Android Konfiguration

1. Keychron mit Android verbinden
2. Android Einstellungen > System > Tastatur > Pyhsische Tastatur > Keychron K5 Pro Keyboard
    Deutsch (Deutschland) (QWERTZ)
    Englisch (US), international

Fast wie auf dem PC
  * Englisch international (allerdings mit Dead Keys und ohne meine personalisierten Remappings)
  * Keychron bringt das Remapping für Caps -> Esc und vor allen Dingen <|> (NUBS) -> AltGr mit

## Wo sind die weiteren Shortcuts dokumentiert?
https://usevia.app/ > Load profile > Layer 1/3

## Download Konfiguration
https://keychron.de/products/keychron-k5-pro-qmk-via-wireless-custom-mechanical-keyboard-iso-layout-collection
1. `k5_pro_iso_rgb.json`: Design/Draft Definition, needs to be added to VIA
2. `*.layout.json`: Layout, can be loaded/configured/saved in VIA

## QMK/VIA
* QMK: Firmware
* VIA: Layout definition

Beachte "ACHTUNG" in [Aktuelle Konfiguration](#aktuelle-konfiguration).

### Links
* https://www.caniusevia.com/ (u.a. Read the docs, Start now)
* https://usevia.app/ (Web App)
* https://github.com/the-via/releases (Electron App, nutzt Web App)
  * Funktioniert nicht auf dem Dell
* https://www.caniusevia.com/docs/specification
* https://docs.qmk.fm/#/keycodes
* https://docs.keeb.io/via
* Firmware: https://github.com/Keychron/qmk_firmware/tree/bluetooth_playground/keyboards/keychron/k5_pro

## Keychron Doku
* https://www.keychron.com/blogs/archived/how-to-use-via-to-program-your-keyboard
* https://www.keychron.com/blogs/news/why-qmk-via-is-one-of-the-most-essential-features-for-a-custom-keyboard
* https://www.keychron.com/pages/keychron-k5-pro-user-guide
* https://www.keychron.com/blogs/archived/k5-pro-factory-reset-and-firmware-flash

## Fragen
* Was bewirkt die NKRO-Taste?
