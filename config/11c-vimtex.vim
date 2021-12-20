let g:tex_flavor='latex'
"let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
" need set this conceallevel to level 2, to fix width to large
"set conceallevel=2
let g:tex_conceal='abdmg'

" fix latex filetype(plaintex)
autocmd BufRead,BufNewFile *.tex set filetype=tex
