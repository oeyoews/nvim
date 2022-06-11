local present, impatient = pcall(require, "impatient")

if present then
  impatient.enable_profile()
  vim.notify("impatient not founded")
end
vim.cmd [[
runtime! custom/config/*.vim
]]
