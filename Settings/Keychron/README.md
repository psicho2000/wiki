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
* Konfigurationsmöglichkeiten sind dokumentiert in https://launcher.keychron.com/#/keymap > Layer > Hover über ?
  * Kopie siehe unten

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

Achtung:
* Layouts mit Suffix `-a` sind kompatibel mit usevia.app
* Layouts mit Suffix `-b` sind kompatibel mit launcher.keychron.com

Beachte Notizen in [QMK/VIA](#qmkvia).

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

_ACHTUNG: Die Layouts (VIA) sind eng verknüpft mit der Firmware (QMK). Bei einem Firmware Change müssen ggf. die Layouts erneuert werden!_

### NOTE: Bug with Custom keys (as of 2024-04-28)

Keys of the Custom tab are offset by 2, i.e.

| Custom Key | Via.app¹         | Keychron K5 Pro² |
| ---------- | ---------------- | ---------------- |
| 0          | Left Option      | ?                |
| 1          | Right Option     | ?                |
| 2          | Left Cmd         | Left Option      |
| 0          | Right Cmd        | Right Option     |
| 4          | Task View        | Left Cmd         |
| 5          | File Explorer    | Right Cmd        |
| 6          | Screenshot       | Task?            |
| 7          | Cortana          | File?            |
| 8          | Siri             | Screenshot?      |
| 9          | Bluetooth Host 1 | Cortana?         |
| 10         | Bluetooth Host 2 | Siri?            |
| 11         | Bluetooth Host 3 | Bluetooth Host 1 |
| 12         | Battery Level    | Bluetooth Host 2 |
| 13         | Any              | Bluetooth Host 3 |
| 14         | Custom(14)       | Battery Level    |

¹ Shown in the app
² Actual outcome

### Links
* https://www.caniusevia.com/ (u.a. Read the docs, Start now)
* https://usevia.app/ (Web App)
* https://launcher.keychron.com/ (Web App **neu**)
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
* Was bewirkt die NKRO-Taste? -> ohne NKRO: 6 Keys gleichzeitig; mit NKRO: beliebig viele Keys gleichzeitig

## Layer behavior

MO(n)   Temporarily activate layer n. Once the key is released, the layer will deactivate. The Fn key on the keybard typically uses this setting.
TG(n)   Change the state of layer n: if it is inactive, activate it; if it is active, deactivate it.
TT(n)   When holding down this key, the layer will be activated and deactivated upon release (similar to MO). Repated tapping will toggle the layer on or off (similar to TG). By default, this requires 5 taps.
OSL(n)  Temporarily activate layer n until the next key is pressed.
TO(N)   Activate layer n and deactivate all other layers (except the default layer). This unique function allows a lower layer to replace a higher layer. It activates when the key is pressed (as lon as the key is held down).
DF(n)   Temporarily switch the default layer to layer n. Note that this is a temporary switch and will be invalid after the keyboard is powered off.

# Lemokey L3

* Bisher kein VIA mapping für Lemokey gefunden, daher ist launcher.keychron.com zu verwenden anstelle usevia.app.
* Karabiner: CapsLock disabled

## Keymap
### Layer 0
Macro-Key 1: DF(2)
Fn: MO(1)
CapsLock: Esc
NUBS: §
§: NUBS
### Layer 1
CapsLock: CapsLock
### Layer 2
Knob: Left/K/Right
Macro-Key 1: DF(0)
Fn: MO(3)
M: 0
J: 1
K: 2
L: 3
U: 4
I: 5
P: 6
### Layer 3
Knob: ,/Passthrough/.

## Status LEDs
* links: Charging
* mitte: Bluetooth/2.4GHz
* rechts: CapsLock

## Links
https://keychron.de/pages/lemokey-l3-user-guide
https://keychron.de/pages/lemokey-l3-user-manual
