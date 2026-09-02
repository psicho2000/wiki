# Plugins
vscodevim.vim
murloccra4ler.leap

# ToDo
* Document current settings
* Evaluate:
  * https://dev.to/ansonh/10-more-vs-code-vim-tricks-to-become-a-faster-coder-ndi#1-tabs-management
  * https://gist.github.com/Pdr-1810/60ce05827288f6c54ed496a7c6e13f19

## Rejected mappings
<C-j>/<C-k>: move line - but <C-k> clashes with VS Code's Ctrl+K chord
vim.normalModeKeyBindings / vim.visualModeKeyBindings
    {
      "before": [
        "<C-j>"
      ],
      "commands": [
        "editor.action.moveLinesUpAction"
      ]
    }

# Current settings

## Keybindings
    {
        "key": "alt+w",
        "command": "workbench.action.closeActiveEditor",
        "when": "inputFocus && vim.mode == 'Normal'"
    },
    {
        "key": "alt+j",
        "command": "editor.action.moveLinesDownAction",
        "when": "inputFocus && (vim.mode == 'Normal' || vim.mode == 'Visual' || vim.mode == 'VisualLine' || vim.mode == 'VisualBlock')"
    },
    {
        "key": "alt+k",
        "command": "editor.action.moveLinesUpAction",
        "when": "inputFocus && (vim.mode == 'Normal' || vim.mode == 'Visual' || vim.mode == 'VisualLine' || vim.mode == 'VisualBlock')"
    }

## Settings
  "vim.hlsearch": true,
  "vim.leader": "<space>",
  "vim.matchpairs": "(:),{:},[:],<:>",
  "vim.sneak": false,
  "vim.useSystemClipboard": true,
  "vim.visualstar": true,
  "vim.visualModeKeyBindingsNonRecursive": [
    {
      "before": [ "<leader>", "p" ],
      "after": [ "\"", "0", "p" ]
    },
    {
      "before": [ "<leader>", "P" ],
      "after": [ "\"", "0", "P" ]
    },
    {
      "before": [ "<" ],
      "after": [ "<", "g", "v" ]
    },
    {
      "before": [ ">" ],
      "after": [ ">", "g", "v" ]
    },
    {
      "before": [ "g", "s", "a" ],
      "after": [ "S" ]
    }
  ],
  "vim.normalModeKeyBindings": [
    {
      "before": [ "H" ],
      "commands": [ "workbench.action.previousEditor" ],
      "silent": true
    },
    {
      "before": [ "L" ],
      "commands": [ "workbench.action.nextEditor" ],
      "silent": true
    },
    {
      "before": [ "<leader>", "f", "n" ],
      "commands": [ "workbench.action.files.newUntitledFile" ],
      "silent": true
    },
    {
      "before": [ "<leader>", "f", "o" ],
      "commands": [ "workbench.action.closeOtherEditors" ],
      "silent": true
    },
    {
      "before": [ "<leader>", "f", "r" ],
      "commands": [ "workbench.action.openRecent" ],
      "silent": true
    },
    {
      "before": [ "<leader>", "<leader>" ],
      "commands": [ "workbench.action.quickOpen" ],
      "silent": true
    },
    {
      "before": [ "<C-p>" ],
      "commands": [ "workbench.action.quickOpen" ],
      "silent": true
    },
    {
      "before": [ "s" ],
      "commands": [ "leap.findForward" ],
      "silent": true
    },
    {
      "before": [ "S" ],
      "commands": [ "leap.findBackward" ],
      "silent": true
    },
    {
      "before": [ "<ESC>" ],
      "commands": [ ":nohlsearch" ]
    },
    {
      "before": [ "y", "p" ],
      "commands": [ "copyRelativeFilePath" ]
    },
    {
      "before": [ "<C-h>" ],
      "commands": [ "workbench.action.focusLeftGroup" ]
    },
    {
      "before": [ "<C-j>" ],
      "commands": [ "workbench.action.focusBelowGroup" ]
    },
    {
      "before": [ "<C-l>" ],
      "commands": [ "workbench.action.focusRightGroup" ]
    },
    {
      "before": [ "y", "P" ],
      "commands": [ "copyFilePath" ]
    },
    {
      "before": [ "g", "s", "a" ],
      "after": [ "y", "s" ]
    },
    {
      "before": [ "g", "s", "r" ],
      "after": [ "c", "s" ]
    },
    {
      "before": [ "g", "s", "d" ],
      "after": [ "d", "s" ]
    }
  ],
  "vim.normalModeKeyBindingsNonRecursive": [
    {
      "before": [ "<leader>", "p" ],
      "after": [ "\"", "0", "p" ]
    },
    {
      "before": [ "<leader>", "P" ],
      "after": [ "\"", "0", "P" ]
    },
    {
      "before": [ "]", "p" ],
      "after": [ "o", "<ESC>", "\"", "0", "P" ]
    },
    {
      "before": [ "]", "P" ],
      "after": [ "o", "<ESC>", "\"", "0", "P" ]
    },
    {
      "before": [ "[", "p" ],
      "after": [ "O", "<ESC>", "\"", "0", "P" ]
    },
    {
      "before": [ "[", "P" ],
      "after": [ "O", "<ESC>", "\"", "0", "P" ]
    },
    {
      "before": [ "n" ],
      "after": [ "n", "z", "z" ]
    },
    {
      "before": [ "N" ],
      "after": [ "N", "z", "z" ]
    }
  ],
  "extensions.experimental.affinity": {
    "vscodevim.vim": 1
  },
  "editor.lineNumbers": "relative"
