return {
  "folke/snacks.nvim",
  opts = {
    scroll = { enabled = false },
    indent = {
      enabled = true,
      animate = {
        enabled = false,
      },
    },
  },
  keys = {
    {
      "\\",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },
  },
}
