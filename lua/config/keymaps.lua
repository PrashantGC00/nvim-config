vim.keymap.set("n", "<leader>a", function()
  require("snacks.dashboard").open()
end, { desc = "Open Snacks mini starter" })

vim.api.nvim_set_keymap(
  "n",
  "<leader>tt",
  ":ToggleTerm direction=float<CR>",
  { noremap = true, silent = true }
)

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true }) --next file
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true }) --prev file


vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem toggle<CR>", {
  desc = "Explorer (Neo-tree)",
})
