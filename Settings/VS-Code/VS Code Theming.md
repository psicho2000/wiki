1. aktive Zeile: `Settings > Editor: Render Line Highlight`
  ```json
  {
    "workbench.colorCustomizations": {
      "editor.lineHighlightBackground": "#b7a47460",
      "editor.lineHighlightBorder": "#51473060"
    }
  }
  ```
2. Auswahl
  ```json
  {
    "workbench.colorCustomizations": {
      "editor.selectionBackground": "#689d6a40",
      "editor.selectionForeground": "#000000"
    }
  }
3. Vorkommen wie Auswahl
  ```json
  {
    "editor.renderLineHighlight": "gutter",
    "workbench.colorCustomizations": {
      "editor.selectionHighlightBackground": "#b5761440",
      "editor.selectionHighlightBorder": "#7f510853"
    }
  }
4. aktives Wort (nicht ausgewählt) + gleiche Wörter: `Settings > Editor: Occurrences Highlight`
  ```json
  {
    "editor.occurrencesHighlight": "off",
    "workbench.colorCustomizations": {
      "editor.wordHighlightBackground": "#b7a47430",
      "editor.wordHighlightBorder": "#b7a47430",
      "editor.wordHighlightStrongBackground": "#b7a474b2",
      "editor.wordHighlightStrongBorder": "#b7a474b2",
      "editor.wordHighlightTextBackground": "#ff0000",
      "editor.wordHighlightTextBorder": "#ff0000"
    }
  }
  ```
  Cmd+D: Add Next Occurrence
  Shift+Cmd+L: Select All Occurrences
5. Others
```json
{
  "workbench.colorCustomizations": {
    "contrastActiveBorder": "#b7a474",
    "contrastBorder": "#b7a47460",
    "editorUnicodeHighlight.border": "#ff0000dc",
    "editorUnicodeHighlight.background": "#ff00005b"
  },
  "editor.unicodeHighlight.includeComments": true,
  "editor.unicodeHighlight.nonBasicASCII": true,
  "editor.unicodeHighlight.allowedCharacters": {
    ...
  }
}
```

---

Test Zeile die gleich ist mit einem Wort
Test Zeile die gleich ist auch ein Wort
Das Wort ist hier noch mal
Welches Wort

# Theming
* Themes are stored in `<user path>/.vscode/extensions/<theme name>/themes/<theme>.json`
  * After theming a change, reload is necessary: Command "Developer: Reload Window"
* Themes can be overriden via `settings.json`: `"workbench.colorCustomizations": { }`.
  * No reload necessary

## Reference/Docs
* https://code.visualstudio.com/api/references/theme-color
* Also: Open any theming json, hover over entry.

# Testing

Works well with Gruvbox Light Medium

```json
{
  "editor.renderLineHighlight": "gutter",
  "workbench.colorCustomizations": {
    "contrastBorder": "#b7a47460",
    "editor.lineHighlightBackground": "#b7a47460",
    "editor.wordHighlightBackground": "#b7a47430",
    "editor.wordHighlightBorder": "#b7a47430",
    "editor.wordHighlightStrongBackground": "#b7a474b2",
    "editor.wordHighlightStrongBorder": "#b7a474b2",
    "editorUnicodeHighlight.border": "#ff0000dc",
    "editorUnicodeHighlight.background": "#ff00005b"
  },
  "editor.unicodeHighlight.includeComments": true,
  "editor.unicodeHighlight.nonBasicASCII": true,
  "editor.unicodeHighlight.allowedCharacters": {
    "ä": true,
    "ö": true,
    "ü": true,
    "Ä": true,
    "Ö": true,
    "Ü": true,
    "ß": true,
    "ℹ️": true,
    "⚠️": true,
    "✅": true,
    "💥": true,
    "❌": true
  }
}
```

Works well with Everforest Dark
```json
{
  "workbench.colorCustomizations": {
    "contrastBorder": "#3d4447",
    "editor.lineHighlightBackground": "#b7a47460",
    "editor.wordHighlightBackground": "#b7a47430",
    "editor.wordHighlightBorder": "#b7a47430",
    "editor.wordHighlightStrongBackground": "#b7a474b2",
    "editor.wordHighlightStrongBorder": "#b7a474b2",
    "editorUnicodeHighlight.border": "#ff0000dc",
    "editorUnicodeHighlight.background": "#ff00005b"
  }
}
```
