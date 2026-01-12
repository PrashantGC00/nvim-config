local Terminal = require("toggleterm.terminal").Terminal
local terminals = {}

function OpenTerminal()
  if #terminals >= 4 then
    vim.notify("Maximum 4 terminals reached", vim.log.levels.WARN)
    return
  end
  local term = Terminal:new({ cmd = "bash", hidden = true, direction = "float" })
  table.insert(terminals, term)
  term:toggle()
end

function CloseTerminal()
  if #terminals == 0 then
    vim.notify("No open terminals", vim.log.levels.INFO)
    return
  end
  local term = table.remove(terminals)
  term:close()
end

vim.api.nvim_set_keymap("n", "+", ":lua OpenTerminal()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "-", ":lua CloseTerminal()<CR>", { noremap = true, silent = true })
