" exec "nohlsearch"

command! -nargs=?  -complete=color Themes colorscheme <args>

lua << EOF
-- vim.cmd([[let g:matchup_matchparen_offscreen = {'method': 'popup'}]])
EOF

" config chezmoi
function! ChezmoiSource() abort
  !chezmoi apply --source-path "%" && exec zsh
endfunction

autocmd BufWritePost ~/.local/share/chezmoi/dot_* :call ChezmoiSource()

" EditorConfigReload
let g:EditorConfig_verbose=1

let bufferline = get(g:, 'bufferline', {})
let bufferline.maximum_padding = 1
let bufferline.maximum_length = 14

" select tabs with float letters
nnoremap <silent> <leader>bp :BufferPick<CR>

" autoload refresh custom/config/ all files, when they changed, not use echo
" message
autocmd BufWritePost ~/.config/nvim/custom/config/*.vim source %
