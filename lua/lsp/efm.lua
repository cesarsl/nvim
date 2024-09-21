local M = {
  name = 'efm',
  config = {
    init_options = { documentFormatting = true },
    settings = {
      rootMarkers = { '.git/' },
      languages = {
        javascript = {
          {
            formatCommand = 'prettierd "${INPUT}"',
            formatStdin = true,
            env = { 'PRETTIERD_DEFAULT_CONFIG=' .. vim.fn.getcwd() .. '/.prettierrc' },
          },
        },
      },
    },
  },
}

return M
