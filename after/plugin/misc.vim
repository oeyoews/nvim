" 1. vim-pug
nnoremap <SPACE>vi <Cmd>PlugInstall<CR>
nnoremap <SPACE>vc <Cmd>PlugClean<CR>
nnoremap <SPACE>vu <Cmd>PlugUpdate<CR>

" 14. quickrun
nnoremap <silent> <SPACE>lr <Cmd>QuickRun<CR><C-w><C-w>G

" 17. hop.nvim
lua require'hop'.setup()
nnoremap <SPACE>jj <Cmd>HopWord<CR>
nnoremap <SPACE>jl <Cmd>HopLine<CR>

" StartupTime
command! Time StartupTime --tries 3

" suda
nnoremap <leader>fE <Cmd>SudaRead<Cr>

" whitespace
let g:better_whitespace_enabled=0
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm=0
"autocmd FileType * EnableStripWhitespaceOnSave
let g:strip_max_file_size = 1000
nnoremap <leader>tw <Cmd>StripWhitespace<Cr>

lua require'colorizer'.setup()
