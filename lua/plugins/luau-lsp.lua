return {
  "lopi-py/luau-lsp.nvim",
  config = function()
    require("mason-lspconfig").setup({
      automatic_enable = {
        exclude = { "luau_lsp" },
      },
    })
    -- Configure *server* settings
    vim.lsp.config("luau-lsp", {
      settings = {
        ["luau-lsp"] = {
          ignoreGlobs = { "**/_Index/**", "node_modules/**" },
          completion = {
            autocompleteEnd = true,
            autoCompleteEnd = true,
            imports = {
              enabled = true,
              ignoreGlobs = { "**/_Index/**", "node_modules/**" },
            },
          },
        },
      },
    })

    -- We call `require("luau-lsp").setup` instead of `vim.lsp.enable("luau_lsp")` because luau-lsp.nvim will
    -- add extra features to luau-lsp, so we don't need to call the native lsp setup
    --
    -- See https://github.com/lopi-py/luau-lsp.nvim
    require("luau-lsp").setup({
      platform = {
        type = "roblox",
      },
      plugin = {
        enabled = true,
      },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
