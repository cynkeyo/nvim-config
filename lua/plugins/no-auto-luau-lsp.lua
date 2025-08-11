return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      luau_lsp = {
        mason = false,
        enabled = false,
      },
    },
  },
}
