return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Extension pour des recherches plus rapides (optionnel mais recommandé)
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          -- Ce qui apparaît en haut de la fenêtre de recherche
          prompt_prefix = " ",
          selection_caret = " ",
          -- Ignore ces dossiers dans toutes les recherches
          file_ignore_patterns = { "node_modules", ".git/", "__pycache__" },
        },
      })

      -- Active l'extension fzf pour des recherches plus rapides
      telescope.load_extension("fzf")

      -- Raccourcis
      vim.keymap.set("n", "<leader>ff", builtin.find_files,  { desc = "Chercher un fichier" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep,   { desc = "Chercher du texte" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers,     { desc = "Chercher un buffer ouvert" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags,   { desc = "Chercher dans l'aide nvim" })
    end,
  },
}
