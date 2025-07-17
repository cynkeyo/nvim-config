return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '[b', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev buffer' },
    { ']b', '<cmd>BufferLineCycleNext<cr>', desc = 'Next buffer' },
  },
  opts = {
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'filetype' },
      lualine_y = { 'lspstatus' },
      lualine_z = { 'location' },
    },
  },
}
