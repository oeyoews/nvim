" ===
" ===  theme
" ===
colorscheme spacevim

" ===
" === Cursor
" ===
" must in colorscheme
if has("autocmd")
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
