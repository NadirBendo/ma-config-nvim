return {

  -- Mason : gestionnaire de serveurs LSP (installe les serveurs automatiquement)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Pont entre Mason et lspconfig (installe et configure automatiquement)
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        -- Ces serveurs seront installés automatiquement
        ensure_installed = { "pyright", "sqlls" },
        automatic_installation = true,
      })
    end,
  },

  -- lspconfig : branche les serveurs LSP à Neovim
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      

      -- Fonction appelée quand un LSP s'attache à un buffer
      -- C'est ici qu'on définit les raccourcis LSP
      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition,      { buffer = bufnr, desc = "Aller à la définition" })
        vim.keymap.set("n", "K",  vim.lsp.buf.hover,           { buffer = bufnr, desc = "Documentation" })
        vim.keymap.set("n", "gr", vim.lsp.buf.references,      { buffer = bufnr, desc = "Références" })
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,  { buffer = bufnr, desc = "Renommer" })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Actions de code" })
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { buffer = bufnr, desc = "Voir l'erreur" })
      end

      -- Nouvelle API Nvim 0.11+
      vim.lsp.config("pyright", { on_attach = on_attach })
      vim.lsp.config("sqlls",    { on_attach = on_attach })

      vim.lsp.enable("pyright")
      vim.lsp.enable("sqlls")    
    end,

  },

  -- blink.cmp : moteur d'autocomplétion
  {
    "saghen/blink.cmp",
    version = "*",
    config = function()
      require("blink.cmp").setup({
        keymap = {
          preset = "default",
          ["<Tab>"]   = { "select_next", "fallback" }, -- Tab pour descendre
          ["<S-Tab>"] = { "select_prev", "fallback" }, -- Shift-Tab pour monter
          ["<CR>"]    = { "accept", "fallback" },       -- Entrée pour confirmer
        },
        sources = {
          default = { "lsp", "path", "buffer" },
          -- lsp    : suggestions du serveur LSP
          -- path   : chemins de fichiers
          -- buffer : mots déjà présents dans le fichier
        },
      })
    end,
  },

}
