local ok, _ = pcall(require, "wlsample")

if not ok then
  vim.notify("windline not founded")
  return false
end

require('wlsample.evil_line')
-- require('wlsample.bubble')
-- require('wlsample.bubble2')
