" mappings
nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>
nnoremap <silent> <SPACE>ea :UltiSnipsEdit all<CR>

let g:UltiSnipsExpandTrigger="\<CR>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsSnippetDirectories = [
			\ $HOME.'/.config/nvim/ultisnips/',
			\ $HOME.'/.cache/nvim/plug/vim-snippets/UltiSnips/',
      \ ]
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsRemoveSelectModeMappings = 1

