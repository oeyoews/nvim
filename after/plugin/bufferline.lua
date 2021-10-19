---[[
require('bufferline').setup {
  options = {
    close_icon = "",
    numbers = "none",
    right_mouse_command = "buffer %d",
    separator_style = "thin",

    }
  }

vim.cmd [[

command! -nargs=1 Goto BufferLineGoToBuffer <args>
command! Pick BufferLinePick

nnoremap <silent><SPACE>ws <cmd>Pick<CR>
]]
--]]
