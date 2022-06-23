local ok, indent_blankline = pcall(require, "indent_blankline")

if not ok then
  vim.notify("indent_blankline not founded")
end

indent_blankline.setup({
  show_current_context = true,
  show_current_context_start = true,
})

-- #E06C75
-- #E5C07B
-- #98C379
-- #56B6C2
-- #61AFEF
-- #C678DD
