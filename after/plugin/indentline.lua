---[[
--
local ok, indent_blankline = pcall(require, "indent_blankline")

if not ok then
  return false
end

indent_blankline.setup({
    --char = "",
    buftype_exclude = {"terminal"},
    space_char_blankline = " ",
    show_current_context = false,
    show_current_context_start = false,
    char_highlight_list = {
      "IndentBlanklineIndent5",
    },
})
--]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
