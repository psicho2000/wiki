## Config
* Editor
    * o Show indentation guides (off)
    * o Indent using tabs (off)
    * x Vim key bindings (confirm with `:q!`, not `ZQ`)
* Appearance
    * Base color scheme: Adapt to system
    * Monospace font: CaskaydiaCove NF
    * Ribbon menu > Manage
        * o Open today's daily note (removed)
    * CSS Snippets
        * x styles (activated)
* Hotkeys: see ../Shortcuts.docx > section Obsidian > Shortcuts with gray background
    * also for Mobile (to be used when Keyboard is active)
* Plugins
    * Core
        * Slides
    * Community
        * obsidian://show-plugin?id=obsidian-kanban
        * obsidian://show-plugin?id=tray
        * obsidian://show-plugin?id=obsidian-livesync
* Themes
    * Everforest Enchanted (Everforest does not Support Glyphs)
    * Gruvbox
    * Nord
    * Solarized
* Snippets
    * see `.\.obsidian\snippets`
* Community plugins
    * Tray
        * Launch on startup
        * Hide on launch
        * Run in background
        * Toggle window focus hotkey: Ctrl+Shift+Tab
        * Quick note hotkey: empty
    * Self-hosted LiveSync
        * Install https://gitlab.com/psicho/couchdb
            * Open UI (see README) and create database `obsidian`
        * Install Plugin on PC
            * Remote Database configuration
                * enter URI, Username, Password, Database name
                * Check database configuration + fix (only on first device)
                * Test Database Connection
                * Enable End to End Encryption
            *  Sync Settings
                *  Presets: LiveSync > Apply
        * Install Plugin on Mobile

---

## Feature requests
https://forum.obsidian.md/t/support-for-vaults-in-windows-subsystem-for-linux-wsl/8580/1
https://github.com/mgmeyers/obsidian-kanban/issues/94

---

## Eval
* Tags: ✅
* Visueller Editor für Desktop? ❌ (nur mobil)
* Wo ist Papierkorb? ✅ (System Trash)
* Checklists ✅
* Vim key bindings ✅
* Templates
* The Rabbit Hole: https://www.patreon.com/posts/67310539
* Plugins
    * Obsidian Git

---

## Migrate
* Vaults
    * Private (Evernote) `->` private Sync (70%)
    * Private (Trello) `->` private Sync ⚠️
    * Shared (Dev-Wiki.one) `->` GitHub wiki ⚠️
    * Work (OneNote, Trello) `->` Sharepoint ✅
