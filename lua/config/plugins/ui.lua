return {

  -- Colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight-night")
    end,
  },

  -- Barre de statut
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- icônes
    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight", -- suit le colorscheme
          section_separators = "",
          component_separators = "",
        },
      })
    end,
  },

  -- Treesitter : coloration syntaxique intelligente
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate", -- met à jour les parsers à chaque update du plugin
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { "lua", "python", "sql", "vim", "vimdoc" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

   {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        window = {
          width = 30, -- largeur du panneau
        },
        filesystem = {
          filtered_items = {
            visible = true,        -- montre les fichiers cachés mais grisés
            hide_dotfiles = false, -- affiche les dotfiles (important pour une config nvim)
            hide_gitignored = true,
          },
          follow_current_file = {
            enabled = true, -- le tree suit le fichier ouvert automatiquement
          },
        },
      })
      -- Raccourci pour ouvrir/fermer le tree
      vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle explorateur" })
    end,
  },

}
