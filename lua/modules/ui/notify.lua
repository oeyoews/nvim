vim.opt.termguicolors = true

local notify = require("notify")

vim.notify = notify

notify.setup({
  stages = "fade_in_slide_out",
  timeout = 100,
  max_width = 65,
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})
