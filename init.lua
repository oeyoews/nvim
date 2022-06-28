-- neovim version need
if vim.fn.has("nvim-0.7") ~= 1 then
  vim.notify("   Please update your neovim to latest")
  return
end

-- need order load
require("modules.order")

require("modules.utils.pcall").setup(require("oeyoews_modules").modules)
