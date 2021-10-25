" quickrun
nnoremap <silent> <SPACE>ll <Cmd>QuickRun<CR><C-w>w

" StartupTime
command! Time StartupTime --tries 3
nnoremap <leader>vt <cmd>StartupTime --tries 3<cr>

" suda
nnoremap <leader>fE <Cmd>SudaRead<Cr>

" whitespace
let g:better_whitespace_enabled=0
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm=0
let g:strip_max_file_size = 1000
nnoremap <leader>tw <Cmd>StripWhitespace<Cr>

" == markdown-preview ==
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [ 'markdown' ]
nnoremap <space>fmm :MarkdownPreviewToggle<CR>

" hop(in lua folder it's nothing)
nno <leader>jj :HopWord<cr>
