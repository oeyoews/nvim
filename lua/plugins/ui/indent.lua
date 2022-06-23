local ok, indent_blankline = pcall(require, "indent_blankline")

if not ok then
  vim.notify("indent_blankline not founded")
end

indent_blankline.setup({
  show_current_context = true,
  show_current_context_start = true,
})
