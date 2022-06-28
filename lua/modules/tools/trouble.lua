local ok, trouble = pcall(require, "trouble")

if not ok then
  vim.notify("trouble not founded")
end

trouble.setup({})

vim.cmd([[
  noremap <silent> <space>tt :Trouble  <cr>
]])
