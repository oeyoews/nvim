-- some neovim needs settings
-- vim.fn.has("nvim-0.8.0")
if oeyoews.nvim_version < 7 then
  vim.notify("   Please update your neovim to latest")
  return
end

-- have "press enter or other command continue" error, and save shake for null-ls or normal conditions
-- https://github.com/folke/which-key.nvim/issues/301
if oeyoews.options.enable_cmdheight and oeyoews.nvim_version > 7 then
  vim.opt.cmdheight = 0
end

--[[ if vim.fn.has("npm") ~= 1 then
  vim.notify("npm exist")
  return
end ]]
