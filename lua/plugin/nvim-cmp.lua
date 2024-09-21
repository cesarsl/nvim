local M = {
  'hrsh7th/nvim-cmp',
  requires = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
  },
  config = function()
    local cmp = require('cmp')

    local cmp_cfg = cmp.config
    local cmp_map = cmp.mapping
    local cmp_preset = cmp_map.preset

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn['vsnip#anonymous'](args.body)
        end,
      },
      mapping = cmp_preset.insert({
        ['<C-d>'] = cmp_map.scroll_docs(-4),
        ['<C-f>'] = cmp_map.scroll_docs(4),
        ['<C-Space>'] = cmp_map.complete(),
        ['<C-e>'] = cmp_map.close(),
        ['<CR>'] = cmp_map.confirm({ select = true }),
      }),
      sources = cmp_cfg.sources({
        { name = 'copilot' },
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
      }, {
        { name = 'buffer' },
      }),
    })

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp_preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    cmp.setup.cmdline(':', {
      mapping = cmp_preset.cmdline(),
      sources = cmp_cfg.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
      matching = { disallow_symbol_nonprefix_matching = false }
    })
  end
}

return M
