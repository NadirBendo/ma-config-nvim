local map = vim.keymap.set

-- La touche "leader" c'est la base de tous les raccourcis customs
-- On la met sur Espace, c'est le standard moderne
vim.g.mapleader = " "

-- Exploration de fichiers (on branchera un vrai plugin plus tard)
map("n", "<leader>e", vim.cmd.Ex, { desc = "Ouvre l'explorateur de fichiers" })

-- Déplacer des lignes sélectionnées en mode visuel
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Déplace la sélection vers le bas" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Déplace la sélection vers le haut" })

-- Naviguer entre les résultats de recherche en gardant le curseur centré
map("n", "n", "nzzzv", { desc = "Résultat suivant (centré)" })
map("n", "N", "Nzzzv", { desc = "Résultat précédent (centré)" })

-- Coller sans écraser le presse-papier
-- (par défaut coller sur une sélection remplace ton clipboard par ce que tu viens d'écraser)
map("x", "<leader>p", '"_dP', { desc = "Coller sans perdre le clipboard" })

-- Sauvegarder rapidement
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Sauvegarder" })

-- Quitter
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quitter" })
map("n", "<leader>bn", "<cmd>bn<CR>", { desc = "Buffer suivant" })
map("n", "<leader>q", "<cmd>bp<CR>", { desc = "Buffer précédent" })

