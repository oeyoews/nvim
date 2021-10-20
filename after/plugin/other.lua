vim.cmd[[

" 1. vim-pug
nnoremap <Leader>vi <Cmd>PlugInstall<CR>
nnoremap <Leader>vc <Cmd>PlugClean<CR>
nnoremap <Leader>vu <Cmd>PlugUpdate<CR>

" 14. quickrun
nnoremap <silent> <SPACE>ll <Cmd>QuickRun<CR><C-w>w

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
let g:strip_max_file_size = 1000
nnoremap <leader>tw <Cmd>StripWhitespace<Cr>

lua require'colorizer'.setup()

" == markdown-preview ==
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [ 'markdown', 'html' ]

nnoremap <space>fmm :MarkdownPreviewToggle<CR>
]]
