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
* Hotkeys
   * Files: Show file explorer  -> Ctrl + Shift + E 
   * Bookmarks: Show bookmarks  -> Ctrl + Shift + B
   * Outline: Show outline      -> Ctrl + Shift + O
   * Slides: Start presentation -> F5
   * Toggle left sidebar        -> Ctrl + \`
   * Toggle right sidebar       -> Alt + \`
   * Reset zoom                 -> Ctrl + Numpad0
   * Zoom in                    -> Ctrl + +
   * Zoom out                   -> Ctrl + -
   * Show in system explorer    -> Alt + Shift + R
* Plugins
    * Core
        * Slides
    * Community
        * obsidian://show-plugin?id=table-editor-obsidian
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

---

## Eval
* Tags: ✅
* Visueller Editor für Desktop? ❌ (nur mobil)
* Wo ist Papierkorb? ✅ (System Trash)
* Checklists ✅
* Vim key bindings ✅
* Hotkeys
    * Add Tray shortcuts Ctrl+Shift+Tab and Ctrl+Shift+Q
    * Add existing shortcuts like Ctrl+B, Ctrl+I
    * Evaluate whether to add more shortcuts, like Toggle bullet/numbered list, Toggle code, Toggle heading, Toggle highlight, Toggle strikethrough
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
* Private Sync Store
    * Google Drive (Free plan: 15 GB minus Google Photos/Gmail)
    * OneDrive (Free plan: 5 GB)
    * Sync Thing (free)
    * https://www.pixelx.de/ NextCloud (5 GB: 1€/month)
    * https://www.tcrserver.de/nextcloud NextCloud (Free plan: 3 GB)
* Sync App
    * FolderSync: https://play.google.com/store/apps/details?id=dk.tacit.android.foldersync.lite&hl=en_US
    * Autosync for Google Drive: https://play.google.com/store/apps/details?id=com.ttxapps.drivesync (Ads)
    * Google Drive (no folder sync on Android, only Desktop)
