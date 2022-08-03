require("Comment").setup()

-- Don't auto commenting new lines
oeyoews.autocmd("BufEnter", {
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
})
