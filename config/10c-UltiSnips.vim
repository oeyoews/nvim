" NOTE: this ctrl e shortkeys is conflict nvim-cmp's mapping, so can't in the
" same files
let g:UltiSnipsExpandTrigger="<C-E>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsSnippetDirectories = [
			\ stdpath('config') . '/Ultisnips/',
      \ ]
let g:UltiSnipsEditSplit="vertical"

nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>G
nnoremap <silent> <SPACE>ea :UltiSnipsEdit all<CR>
