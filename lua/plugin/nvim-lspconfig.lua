local fs = require('util.filesystem')

local M = {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
  },
  config = function()
    local lspconfig = require('lspconfig')

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local files = fs.get_files_list('lua/lsp')

    for _, file in ipairs(files) do
      local module = require(fs.get_module_name(file))

      module.config.capabilities = capabilities

      lspconfig[module.name].setup(module.config)
    end
  end
}

return M
