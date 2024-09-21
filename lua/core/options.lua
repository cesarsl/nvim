local opt          = vim.opt

opt.autoindent     = true
opt.backup         = false
opt.cmdheight      = 1
opt.colorcolumn    = '88'
opt.completeopt    = { 'menuone', 'noselect' }
opt.conceallevel   = 0
opt.cursorline     = true
opt.expandtab      = true
opt.fileencoding   = 'utf-8'
opt.hlsearch       = true
opt.ignorecase     = true
opt.incsearch      = true
opt.laststatus     = 3
opt.mouse          = 'a'
opt.number         = true
opt.numberwidth    = 2
opt.pumheight      = 10
opt.relativenumber = true
opt.scrolloff      = 8
opt.shiftwidth     = 2
opt.showmode       = false
opt.sidescrolloff  = 8
opt.signcolumn     = 'auto:4'
opt.smartcase      = true
opt.smartindent    = true
opt.softtabstop    = 2
opt.splitbelow     = true
opt.splitright     = true
opt.swapfile       = false
opt.tabstop        = 2
opt.termguicolors  = true
opt.timeoutlen     = 750
opt.undofile       = true
opt.updatetime     = 300
opt.wrap           = false
opt.writebackup    = false

opt.clipboard:append('unnamedplus')
opt.iskeyword:append('-')
opt.shortmess:append('c')
opt.whichwrap:append('<,>,[,],h,l')

opt.formatoptions:remove('c', 'r', 'o')
