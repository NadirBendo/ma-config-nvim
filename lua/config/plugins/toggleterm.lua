return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<C-t>]], -- Ctrl+T pour toggle
        direction = "float",      -- fenêtre flottante
        float_opts = {
          border = "curved",
        },
      })
    end,
  },
}
