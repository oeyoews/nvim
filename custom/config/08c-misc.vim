" exec "nohlsearch"

command! -nargs=?  -complete=color Themes colorscheme <args>

" config chezmoi
function! ChezmoiSource() abort
  " exec zsh not use , just int current vim work
  !chezmoi apply --source-path "%" &&
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

" Customize with popup({border = ...})  : `single` (default), `double`, `rounded`
" TODO:
" autocmd! FileType markdown nnoremap <leader>tp :lua require("nabla").popup()<cr>

nnoremap <silent> <leader>tn :set number!<cr>
nnoremap <silent> <leader>tt :TroubleToggle<cr>
