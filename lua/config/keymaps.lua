-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- override default keymap for signature help to the blink cmp select_prev
vim.keymap.set("n", "<C-k>", function()
  require("blink-cmp").select_prev()
end)

-- Map LSP hover to gh
vim.api.nvim_set_keymap("n", "gh", '<cmd>lua require("pretty_hover").hover()<cr>', { desc = "Toggle LSP hover" })
