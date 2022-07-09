-- some neovim needs settings
if vim.fn.has("nvim-0.7") ~= 1 then
  vim.notify("   Please update your neovim to latest")
  return
end

-- have "press enter or other command continue" error, and save shake for null-ls or normal conditions
-- https://github.com/folke/which-key.nvim/issues/301
if vim.fn.has("nvim-0.8.0") == 1 then
  -- vim.opt.cmdheight = 0
end
