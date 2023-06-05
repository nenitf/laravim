local ts = require('nvim-treesitter.ts_utils')
local query = vim.treesitter.query
local M = {}

local function create_commands()
  vim.api.nvim_create_user_command('LaravimGoToConfig', function()
      local bfnr = vim.fn.bufnr()
      local node = ts.get_node_at_cursor()
      local param = query.get_node_text(node, bfnr)

      param = tostring(param)

      if not string.match(param, "%w%.%w.*") then
        return
      end

      local file = string.match(param, "%w+")

      vim.cmd('e config/' .. file .. '.php')

      local path = string.gsub(param, file .. '.', '')

      for prop in string.gmatch(path, "([^.]+)") do
        vim.fn.search(string.format("['\"]%s['\"]", prop), 'W')
      end
    end,
    {}
  )
end

M.setup = function()
  create_commands()
end

return M
