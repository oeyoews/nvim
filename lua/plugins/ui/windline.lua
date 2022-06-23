local ok, _ = pcall(require, "windline")

if not ok then
  vim.notify("windline not founded")
end

require("wlsample.evil_line")
