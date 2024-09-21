local api = vim.api

local M = {}

function M.get_files_list(folder_path, file_type)
  local file_type = file_type or 'lua'

  if (folder_path:sub(-1) ~= '/') then
    folder_path = folder_path .. '/'
  end

  return api.nvim_get_runtime_file(folder_path .. '*.' .. file_type, true)
end

function M.get_module_name(file_path)
  return file_path:match('lua/(.*)%.lua')
end

return M
