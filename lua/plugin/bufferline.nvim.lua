local M = {
  'akinsho/bufferline.nvim',
  version = '*',
  config = function()
    local bufferline = require('bufferline')
    bufferline.setup({
      options = {
        style_preset = {
          bufferline.style_preset.no_italic,
        },
        separator_style = 'slant',
        themeable = true,
        indicator = {
          style = 'none'
        },
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'Files',
            text_align = 'center',
            separator = '|',
          },
        },
        show_buffer_icons = false,
      }
    })
  end,
}

return M
