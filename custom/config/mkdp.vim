let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [ 'markdown' ]

autocmd! FileType markdown nnoremap <space>fmm :MarkdownPreviewToggle<CR>
