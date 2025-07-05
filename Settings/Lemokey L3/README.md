# Lemokey L3

## Configuration

* Karabiner
    * Simple Modifications: F13 -> Calculator
    * Devices: For all Lemokey occurrences, enable "Modify Events"
        * Note: there is one Lemokey occurrence for Cable, Bluetooth, 2.4GHz each
* Launcher: see config in ./Launcher/
* Note: Special Keys "Mission Control in macOS" and "Launch Pad in macOS" have no effect when Karabiner is active.

## Status LEDs

* links: Charging
* mitte: Bluetooth/2.4GHz
* rechts: CapsLock

## Stock Switches

Gateron Jupiter Banana

## Links

https://launcher.keychron.com (better than usevia.app)
https://usevia.app
https://keychron.de/pages/lemokey-l3-user-guide
https://keychron.de/pages/lemokey-l3-user-manual
https://www.lemokey.com/pages/firmware-and-json-files-of-the-lemokey-qmk-keyboards

https://www.reddit.com/r/macbook/comments/s2h8qi/how_to_remap_f5_dictation_key_to_muteunmute/
https://www.reddit.com/r/MacOS/comments/viznej/override_mute_volume_button_to_mute_mic/
https://ke-complex-modifications.pqrs.org/#f5_ms_teams_zoom_mic_mute

## Layer behavior

MO(n)   Temporarily activate layer n. Once the key is released, the layer will deactivate. The Fn key on the keybard typically uses this setting.
TG(n)   Change the state of layer n: if it is inactive, activate it; if it is active, deactivate it.
TT(n)   When holding down this key, the layer will be activated and deactivated upon release (similar to MO). Repated tapping will toggle the layer on or off (similar to TG). By default, this requires 5 taps.
OSL(n)  Temporarily activate layer n until the next key is pressed.
TO(N)   Activate layer n and deactivate all other layers (except the default layer). This unique function allows a lower layer to replace a higher layer. It activates when the key is pressed (as lon as the key is held down).
DF(n)   Temporarily switch the default layer to layer n. Note that this is a temporary switch and will be invalid after the keyboard is powered off.
