" exec "nohlsearch"

command! -nargs=?  -complete=color Themes colorscheme <args>

lua << EOF
-- vim.cmd([[let g:matchup_matchparen_offscreen = {'method': 'popup'}]])
EOF

" nnoremap <silent> <leader>fn :NERDTreeToggle<cr>
" Start NERDTree and put the cursor back in the other window.
"
"autocmd VimEnter * NERDTree
"autocmd VimEnter * NERDTree | wincmd p
"
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" config chezmoi
autocmd BufWritePost ~/.local/share/chezmoi/dot_* ! chezmoi apply --source-path "%" && exec zsh
      " \| lua vim.notify("Successly refresh chezmoi")

" EditorConfigReload
let g:EditorConfig_verbose=1

let bufferline = get(g:, 'bufferline', {})
let bufferline.maximum_padding = 1
let bufferline.maximum_length = 14

nnoremap <silent> <leader>bp :BufferPick<CR>
