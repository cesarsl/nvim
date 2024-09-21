local M = {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  opts = {
    view = {
      width = 30,
      side = 'right',
    },
    filters = {
      dotfiles = false,
    },
  },
}

return M
