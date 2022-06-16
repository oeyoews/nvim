local ok, tabout = pcall(require, "tabout")

if not ok then
  vim.notify("tabout not founded")
  return
end

tabout.setup()
