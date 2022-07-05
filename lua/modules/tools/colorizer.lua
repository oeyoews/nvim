if not vim.opt.termguicolors then
  vim.opt.termguicolors = true
end

local colorizer = require("colorizer")

colorizer.setup()
