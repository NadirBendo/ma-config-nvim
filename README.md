# Ma config neovim

Setup clonable minimal pour une config neovim passable (coloration, raccourcis standards, lazy et quelques plugins basiques).

Fait en grande partie avec Claude pour gagner du temps mais rien de nouveau par rapport à avant.

## Dépendances système

| Outil | Version | Usage |
|-------|---------|-------|
| Neovim | 0.11.x | — |
| Node.js | >= 14 | Pyright (LSP Python) |
| Go | < 1.24 | sqlls (LSP SQL) |
| npm | any | Pyright |
| ripgrep | any | Telescope live_grep |
| Git | any | Lazy.nvim |

## Installation
```bash
git clone git@github.com:NadirBendo/ma-config-nvim.git ~/.config/nvim
nvim # Lazy installe les plugins automatiquement
```

## Plugins

- **lazy.nvim** — gestionnaire de plugins
- **tokyonight** — colorscheme
- **lualine** — barre de statut
- **nvim-treesitter** — coloration syntaxique
- **neo-tree** — explorateur de fichiers
- **telescope** — recherche de fichiers et de texte
- **mason** — gestionnaire de serveurs LSP
- **pyright** — LSP Python
- **sqlls** — LSP SQL
- **blink.cmp** — autocomplétion
- **toggleterm** - terminal flottant affichable avec un raccourci (ctrl+t)

