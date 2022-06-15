local ok, tabout = pcall(require, "tabout")

if not ok then
  vim.notify("tabout not founded")
  return false
end

tabout.setup()
