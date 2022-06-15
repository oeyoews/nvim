local ok, _ = pcall(require, "windline")

if not ok then
  vim.notify("windline not founded")
  return false
end

-- option bubble(2)
require('wlsample.evil_line')
