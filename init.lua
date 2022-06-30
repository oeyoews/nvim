if vim.fn.has("nvim-0.7") ~= 1 then
  vim.notify("   Please update your neovim to latest")
  return
end

if vim.fn.has("nvim-0.8.0") == 1 then
  vim.opt.cmdheight = 0
end

require("core.bootstrap")

require("core.packer")

require("core")

require("modules")
