" quickrun
nnoremap <silent> <SPACE>ll <Cmd>QuickRun<CR><C-w>w

" StartupTime
nnoremap <leader>vt <cmd>StartupTime --tries 1<cr>

" == markdown-preview ==
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [ 'markdown' ]
" is right for type
autocmd! FileType markdown nnoremap <space>fmm :MarkdownPreviewToggle<CR>

"exec "nohlsearch"

command! -nargs=?  -complete=color Theme colorscheme <args>
