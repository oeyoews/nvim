local gitsigns = require("gitsigns")

gitsigns.setup({
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = false,
    delay = 100,
    ignore_whitespace = false,
  },
  current_line_blame_formatter_opts = {
    relative_time = true,
  },
  max_file_length = 400,
  numhl = true,
})

-- TODO  preview hunk should set ft
