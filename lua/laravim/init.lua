local M = {}

local function autocmd()
  vim.api.nvim_create_user_command('LaravimGetConfig', function()
    end,
    {}
  )
end

M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
  autocmd()
end

return M
