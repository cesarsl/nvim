local dgn = vim.diagnostic
local lsp = vim.lsp
local map = vim.keymap.set

local opts = { noremap = true, silent = true }

map('n', '<C-Left>', '<C-w>h', opts)
map('n', '<C-Down>', '<C-w>j', opts)
map('n', '<C-Up>', '<C-w>k', opts)
map('n', '<C-Right>', '<C-w>l', opts)

map('n', '<S-l>', '<Cmd>bnext<CR>', opts)
map('n', '<S-h>', '<Cmd>bprevious<CR>', opts)
map('n', '<Leader>bd', '<Cmd>bdelete<CR>', opts)
map('n', '<Leader>bs', '<Cmd>write<CR>', opts)

map('n', '<C-s>', '<Cmd>write<CR>', opts)
map('i', '<C-s>', '<Cmd>write<CR>', opts)
map('n', '<C-w>', '<Cmd>bdelete<CR>', opts)

map('i', '<Up><Down>', '<Esc>', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

map('n', '<A-j>', '<Cmd>m .+1<CR>==', opts)
map('n', '<A-k>', '<Cmd>m .-2<CR>==', opts)

map('n', '<Leader>a', '<Cmd>NvimTreeToggle<CR>', opts)

map('n', '<Leader>f', lsp.buf.format, { noremap = true, silent = true, desc = 'format' })
map('n', '<Leader>e', dgn.open_float, { noremap = true, silent = true, desc = 'open float' })
map('n', '<Leader>q', dgn.setloclist, { noremap = true, silent = true, desc = 'open loc list' })
map('n', '[d', dgn.goto_prev, { noremap = true, silent = true, desc = 'go to previous lsp hint' })
map('n', ']d', dgn.goto_next, { noremap = true, silent = true, desc = 'go to next lsp hint' })
