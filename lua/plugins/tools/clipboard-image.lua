local ok, _ = pcall(require, "clipboard-image")

if not ok then
  vim.notify("clipboard not founded")
  return
end
