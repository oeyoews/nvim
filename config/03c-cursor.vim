" NOTE: comment this to use material's cursor style
" #FFCC00
hi Cursor guifg=#51afef guibg=#51afef
"hi Cursor  guibg=#FFCC00
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50

" restore the cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
