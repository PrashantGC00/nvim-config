local colorschemes = { "vim", "tokyonight", "catppuccin", "morning", "retrobox", "quiet" }

math.randomseed(os.time())

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = colorschemes[math.random(#colorschemes)],
    },
  },
}
