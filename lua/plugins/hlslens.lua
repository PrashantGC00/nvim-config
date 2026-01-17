-- lua/custom/plugins.lua
return {
  {
    "kevinhwang91/nvim-hlslens",
    config = function()
      require('hlslens').setup()
      -- optional keymaps to start search
      vim.api.nvim_set_keymap('n', '<C-f>', '/', { noremap = true })
    end
  }
}
 