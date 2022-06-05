" == markdown-preview ==
let g:mkdp_echo_preview_url = 1
let g:mkdp_open_to_the_world = 0
let g:mkdp_filetypes = [ 'markdown' ]
" is right for type
autocmd! FileType markdown nnoremap <space>fmm :MarkdownPreviewToggle<CR>

"exec "nohlsearch"

command! -nargs=?  -complete=color Themes colorscheme <args>


lua << EOF
-- vim.cmd([[let g:matchup_matchparen_offscreen = {'method': 'popup'}]])
EOF

nnoremap <silent> <leader>fn :NERDTree<cr>
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
