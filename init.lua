-- check nvim version
if vim.fn.has("nvim-0.7") ~= 1 then
  vim.notify("   Please update your neovim to latest")
  return
end

-- enable nightly features
if vim.fn.has("nvim-0.8.0") == 1 then
  vim.opt.cmdheight = 0
end

-- need order loading
require("modules.order")

-- load plugin modules
require("modules.utils.pcall").setup(require("oeyoews_modules").modules)
