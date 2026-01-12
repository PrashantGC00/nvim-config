-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Floating terminal toggle
vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  ":ToggleTerm direction=float<CR>",
  { noremap = true, silent = true }
)

-- Close floating terminal
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>:bd!<CR>]], { noremap = true, silent = true })
