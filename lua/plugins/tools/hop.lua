local hop_ok, hop = pcall(require, "hop")

if not hop_ok then
  return false
end

hop.setup()

vim.cmd([[
    nnoremap <leader>hw  <cmd>HopWord<CR>
    nnoremap <leader>hl <cmd>HopLine<cr>
    nnoremap <leader>ha <cmd>HopAnywhere<cr>
]])
