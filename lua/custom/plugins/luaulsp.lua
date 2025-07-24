return {
  'lopi-py/luau-lsp.nvim',
  config = function()
    require('luau-lsp').setup {
      platform = {
        type = 'roblox',
      },
      types = {
        roblox_security_level = 'PluginSecurity',
      },
      sourcemap = {
        enabled = true,
        autogenerate = true,
        rojo_project_file = 'default.project.json',
        sourcemap_file = 'sourcemap.json',
      },
      plugin = {
        enabled = true,
        port = 3667,
      },
    }

    vim.lsp.config('luau-lsp', {
      settings = {
        ['luau-lsp'] = {
          completion = {
            imports = {
              enabled = true, -- enable auto imports
            },
            -- autocompleteEnd = {
            --   enabled = true,
            -- },
          },
        },
      },
    })
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
