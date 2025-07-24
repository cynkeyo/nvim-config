return {
  'lopi-py/luau-lsp.nvim',
  -- enabled = false,
  config = function()
    require('luau-lsp').setup {
      platform = {
        type = 'roblox',
      },
      types = {
        roblox_security_level = 'PluginSecurity',
      },
      completion = {
        imports = {
          enabled = true,
        },
        auto_complete_end = true,
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
      settings = {
        path = 'luau-lsp',
        completion = {
          imports = {
            enabled = true,
          },
          auto_complete_end = true,
        },
      },
    }

    vim.lsp.config('luau-lsp', {
      settings = {
        ['luau-lsp'] = {
          completion = {
            imports = {
              enabled = true,
            },
            autoCompleteEnd = true,
          },
        },
      },
    })
  end,
  -- opts = {
  --   platform = {
  --     type = 'roblox',
  --   },
  --   types = {
  --     roblox_security_level = 'PluginSecurity',
  --   },
  --   completion = {
  --     imports = {
  --       enabled = true,
  --     },
  --     auto_complete_end = true,
  --   },
  --   sourcemap = {
  --     enabled = true,
  --     autogenerate = true,
  --     rojo_project_file = 'default.project.json',
  --     sourcemap_file = 'sourcemap.json',
  --   },
  --   plugin = {
  --     enabled = true,
  --     port = 3667,
  --   },
  --   settings = {
  --     path = 'luau-lsp',
  --     completion = {
  --       imports = {
  --         enabled = true,
  --       },
  --       auto_complete_end = true,
  --     },
  --   },
  -- },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
