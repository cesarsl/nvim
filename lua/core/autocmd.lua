local api = vim.api

api.nvim_create_augroup('UI', { clear = true })

api.nvim_create_autocmd({ 'VimEnter' }, {
  group = 'UI',
  callback = function()
    api.nvim_command('hi Normal ctermbg=NONE guibg=NONE')
    api.nvim_command('hi SignColumn ctermbg=NONE guibg=NONE')
  end
})

api.nvim_create_augroup('LspFormatting', {})

api.nvim_create_autocmd({ 'BufWritePre' }, {
  group = 'LspFormatting',
  callback = function()
    vim.lsp.buf.format()
  end
})
