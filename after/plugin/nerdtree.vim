nnoremap <leader>ft <cmd>NERDTreeToggle<cr> 
nnoremap <leader>fl <cmd>NERDTreeFind<cr> 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let NERDTreeWinPos = 'right'
