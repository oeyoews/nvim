vim.opt.termguicolors = true

local notify = require("notify")

vim.notify = notify

notify.setup({
  stages = "fade_in_slide_out",

  timeout = 100,

  -- Minimum width for notification windows
  minimum_width = 50,

  -- Icons for the different levels
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})
