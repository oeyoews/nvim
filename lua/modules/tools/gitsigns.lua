--[[ local gitsigns = require("gitsigns")

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
}) ]]

---[[
oeyoews.autocmd("FileType", {
  group = oeyoews.mygroup,
  pattern = "*",
  callback = function()
    if vim.bo.filetype:len() ~= 0 then
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
    end
    -- TODO  preview hunk should set ft
  end,
})
--]]
