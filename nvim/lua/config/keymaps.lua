-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<M-s>", ":source %<CR>", { desc = "Source current file" })
vim.keymap.set("n", "<C-x>", ":HighlightColors Toggle<CR>", { desc = "Highlight the current line" })
vim.keymap.set("n", "-", ":Oil<CR>", { desc = "Open Oil" })
