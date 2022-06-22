local ok, treesitter_context = pcall(require, "treesitter-context")

if not ok then
  vim.notify("treesitter_context not founded")
  return
end

treesitter_context.setup({
  enable = false,
})


vim.cmd([[
  nnoremap <silent> <leader>tC :TSContextToggle<cr>:lua vim.notify("toggle TSContext")<cr>
]])
