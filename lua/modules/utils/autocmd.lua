oeyoews.autocmd("FileType", {
  pattern = {
    "help",
    "startuptime",
  },
  callback = function()
    vim.cmd([[
setlocal nocursorline nonumber norelativenumber
  ]])
  end,
})
