-- ┏━━━━━━━━━━━━━━━━━━┓
-- ┃CHECK NVIM VERSION┃
-- ┗━━━━━━━━━━━━━━━━━━┛
if vim.fn.has("nvim-0.7") ~= 1 then
  vim.notify("   Please update your neovim to latest")
  return
end

-- ┏━━━━━━━━━━━━━━━━━━━━┓
-- ┃ENABLE NIGHT FEATURE┃
-- ┗━━━━━━━━━━━━━━━━━━━━┛
if vim.fn.has("nvim-0.8.0") == 1 then
  vim.opt.cmdheight = 0
end

-- ┏━━━━━━━━━━━━━━━━━━┓
-- ┃NEED ORDER LOADING┃
-- ┗━━━━━━━━━━━━━━━━━━┛
require("modules.order")

-- ┏━━━━━━━━━━━━━━━━━━━┓
-- ┃LOAD PLUGIN MODULES┃
-- ┗━━━━━━━━━━━━━━━━━━━┛
require("modules.utils.pcall").setup(require("modules").modules)
