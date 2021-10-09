colorscheme spacevim

" restore cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" transparent background
hi Normal     ctermbg=NONE guibg=NONE
