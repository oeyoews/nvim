" quickrun
nnoremap <silent> <SPACE>ll <Cmd>QuickRun<CR><C-w>w

" StartupTime
nnoremap <leader>vt <cmd>StartupTime --tries 1<cr>

" == markdown-preview ==
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [ 'markdown' ]
autocmd! FileType markdown nnoremap <space>fmm :MarkdownPreviewToggle<CR>

"exec "nohlsearch"

command! -nargs=?  -complete=color Theme colorscheme <args>


" add toggle for it, temp method is u to undo it
"autocmd! BufNewFile,BufRead *.norg nnoremap <space>nn I+<esc>A+<esc>
" TODO: have bug how to exclude for other filetypes"
"au<c-g>u<Esc>[s1z=`]a<c-g>u
"<c-g>u<Esc>[s1z=`]a<c-g>u
" TODO:
"autocmd! FileType norg nnoremap <space>nn <c-g>mzI+<esc>A+<esc>`z<c-g>
