local autopairs_ok, autopairs = pcall(require, "nvim-autopairs")

if not autopairs_ok then
  vim.notify "autopairs not founded"
  return false
end

autopairs.setup {}
