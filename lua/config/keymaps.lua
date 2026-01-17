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


vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true }) --next file
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true }) --prev file


-- lua/custom/buffer.lua
local function close_buffers_right()
  local current = vim.api.nvim_get_current_buf()
  local buffers = vim.api.nvim_list_bufs()
  local found_current = false

  for _, buf in ipairs(buffers) do
    if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_option(buf, "buflisted") then
      if buf == current then
        found_current = true
      elseif found_current then
        vim.api.nvim_buf_delete(buf, { force = true })
      end
    end
  end
end

-- Keymap: <leader>br = close buffers to the right
vim.keymap.set("n", "<leader>br", close_buffers_right, { noremap = true, silent = true, desc = "Close buffers to right" })

vim.keymap.set("n", "<C-f>", "/", { noremap = true, silent = false, desc = "Search in file (like Ctrl+F)" })

-- lua/custom/keymaps.lua
vim.keymap.set("n", "<leader>ps", function()
  local word = vim.fn.input("Search project for: ")
  if word == "" then return end

  -- Get all files recursively
  local function get_files(dir)
    local files = {}
    for _, f in ipairs(vim.fn.readdir(dir)) do
      local path = dir .. "\\" .. f
      if vim.fn.isdirectory(path) == 1 then
        -- recurse into directories
        for _, sub in ipairs(get_files(path)) do
          table.insert(files, sub)
        end
      else
        table.insert(files, path)
      end
    end
    return files
  end

  local all_files = get_files(vim.loop.cwd())

  -- clear previous quickfix
  vim.fn.setqflist({}, ' ', { title = "Project Search" })

  for _, file in ipairs(all_files) do
    local ok, lines = pcall(vim.fn.readfile, file)
    if ok then
      for lnum, line in ipairs(lines) do
        if string.match(line, word) then
          table.insert(vim.fn.getqflist(), { filename = file, lnum = lnum, col = 1, text = line })
        end
      end
    end
  end

  vim.fn.setqflist(vim.fn.getqflist())
  vim.cmd("copen")
end, { noremap = true, silent = true, desc = "Project search without fd/rg" })
