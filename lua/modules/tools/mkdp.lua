local g = vim.g

g.mkdp_echo_preview_url = false
g.mkdp_port = 9999
g.mkdp_open_to_the_world = false -- need network
g.mkdp_theme = "dark"

vim.cmd([[
let g:mkdp_filetypes = [ 'markdown', 'txt', 'html']

augroup markdownpreview
  autocmd!
  autocmd FileType markdown,html,txt nnoremap <silent> <leader>fM :MarkdownPreviewToggle<CR>
augroup END
]])
