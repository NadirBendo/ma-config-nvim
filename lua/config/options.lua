local opt = vim.opt

-- Numéros de ligne
opt.number = true          -- affiche le numéro de ligne absolu
opt.relativenumber = true  -- affiche les numéros relatifs (super utile pour les mouvements)

-- Indentation
opt.tabstop = 4            -- un Tab = 4 espaces visuellement
opt.shiftwidth = 4         -- indentation automatique = 4 espaces
opt.expandtab = true       -- convertit les Tab en espaces (important en Python)
opt.smartindent = true     -- indentation intelligente selon le contexte

-- Apparence
opt.termguicolors = true   -- active les vraies couleurs 24-bit dans le terminal
opt.cursorline = true      -- surligne la ligne du curseur
opt.scrolloff = 8          -- garde toujours 8 lignes visibles au-dessus/dessous du curseur
opt.signcolumn = "yes"     -- colonne à gauche pour les erreurs LSP (évite les sauts)

-- Comportement
opt.wrap = false           -- pas de retour à la ligne automatique
opt.ignorecase = true      -- recherche insensible à la casse...
opt.smartcase = true       -- ...sauf si tu mets une majuscule
opt.splitright = true      -- nouveau panneau vertical à droite
opt.splitbelow = true      -- nouveau panneau horizontal en bas
opt.clipboard = "unnamedplus" -- partage le presse-papier avec le système
