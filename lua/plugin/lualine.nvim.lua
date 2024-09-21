local colors = {
  black = {
    [60] = '#484848',
    [70] = '#2E2E2E',
    [80] = '#141414',
  },
  white = {
    [80] = '#C1C1C1',
    [90] = '#E1E1E1',
  },
  red = {
    [90] = '#EC8281',
  },
  orange = {
    [90] = '#DE935F',
  },
  yellow = {
    [90] = '#F0C674',
  },
  green = {
    [90] = '#B5BD68',
  },
  cyan = {
    [90] = '#7BAEA7',
  },
  blue = {
    [90] = '#84A5C1',
  },
  purple = {
    [90] = '#B597BE',
  },
}

local custom_theme = {
  normal = {
    a = { bg = colors.blue[90], fg = colors.black[70], gui = 'bold' },
    b = { bg = colors.black[60], fg = colors.white[80] },
    c = { bg = colors.black[70], fg = colors.white[80] },
  },
  insert = {
    a = { bg = colors.green[90], fg = colors.black[70], gui = 'bold' },
    b = { bg = colors.black[60], fg = colors.white[80] },
    c = { bg = colors.black[70], fg = colors.white[80] }
  },
  visual = {
    a = { bg = colors.purple[90], fg = colors.black[70], gui = 'bold' },
    b = { bg = colors.black[60], fg = colors.white[80] },
    c = { bg = colors.black[70], fg = colors.black[80] }
  },
  replace = {
    a = { bg = colors.red[90], fg = colors.black[70], gui = 'bold' },
    b = { bg = colors.black[60], fg = colors.white[80] },
    c = { bg = colors.black[70], fg = colors.white[80] }
  },
}


local M = {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = custom_theme
    }
  },
}

return M
