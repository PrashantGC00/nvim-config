-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("project_nvim").setup({
    manual_mode = false,  -- false = automatically detect projects
    detection_methods = { "pattern", "lsp" },
    patterns = { ".git", "Makefile", "package.json" },  -- project markers
    show_hidden = true,
    silent_chdir = true,
    scope_chdir = "global",
})

local lspconfig = require("lspconfig")

-- Go LSP
lspconfig.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        nilness = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})
