return {
  "neovim/nvim-lspconfig",  -- Keep this installed
  -- Don't call require('lspconfig') — just having it installed registers the commands
  lazy = false,
  dependencies = {
    "mason-org/mason.nvim",
    opts = {},
  },
  config = function()
    require("servers")  -- This contains your vim.lsp.config() calls
  end,
}
