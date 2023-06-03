local default_config = require("template.config")

local M = {
  config = default_config
}


M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
end

return M
