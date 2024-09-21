local M = {
  'w0ng/vim-hybrid',
  config = function()
    vim.cmd('colorscheme hybrid')
    vim.cmd('hi WinSeparator guifg=#2E2E2E')
  end
}

return M
