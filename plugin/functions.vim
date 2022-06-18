" have some bug , if source it twice in xx.vim and xx.lua(because of vim.cmd)
" it's conflict for ranger, maybe it's it terminal job

command! -nargs=1 Out enew|pu=execute('<args>')
command! Scripts split | enew|pu=execute('scriptnames')
command! -nargs=1 -complete=highlight HI enew|pu=execute('hi <args>')
command! -nargs=?  -complete=color Themes colorscheme <args>

function! FormatFile() abort
  let save_cursor = getpos('.')
  normal! gg=G
  call setpos('.', save_cursor)
endfunction

function! Terminal()
  " TODO: have conflict for ranger(TermOpen)
  "setlocal filetype=omz
  "au! TermOpen * call feedkeys("i")
  autocmd! TermClose * call feedkeys("\<esc>")
  split | terminal
  setlocal nornu nonu
  setlocal nocursorline
endfunction

" config chezmoi
function! ChezmoiSource() abort
  " exec zsh not use , just int current vim work
  !chezmoi apply --source-path "%"
endfunction

function! ToggleStatusLine() abort
  " laststatus default is 2
  if &laststatus
    set laststatus=0
  else
    set laststatus=3
  endif

  " disable lastline right info set ruler!
  " set noruler
  " let statusline = 2
  " let &laststatus = statusline
  lua vim.notify("ToggleStatusLine")
endfunction

function! FindVanilla() abort
  " this variable how to be quoted
  " let &vanilla = stdpath('config') . '/doc/vanilla.tx'
  "   if !empty(glob(&vanilla))
  "    echo &vanilla
  "   else
  "       echom "this &vanilla not fouded"
  "   endif
  find ~/.config/nvim/doc/vanilla.txt
endfunction

function! FindPlugin() abort
  find ~/.config/nvim/lua/plugins/plugins.lua.lua
endfunction

function! FindInit() abort
  find ~/.config/nvim/init.lua
endfunction

" open nvim config file
nnoremap <silent> <space>fi <cmd>call FindInit()<cr>
nnoremap <silent> <space>fp <cmd>call FindPlugin()<cr>

" TODO: write a function, adjust it's dir
"nnoremap <space>fd <cmd>e ~/dotfiles/notes/draft/`date -I`.md<cr>
"nnoremap <space>fd <cmd>e ${NOTES}/markdown/$(date +"%d-%m-%Y").md<cr>

" for spelling
" for spell dir, en...add this file is auto, just for more file exist
" set spellfile+=~/.config/nvim/spell/myspell.utf-8.add
" is confilict spellfile
"set dictionary=~/.config/nvim/dict/myself.md

" use ctrl k && ctrl l
"set dictionary+=~/.config/nvim/dict/myself.txt
" h 'complete' or may use ctrl x && ctrl k
" ctrl x && ctrl L(copy line)
" ctrl x && ctrl f(complete filename)
"
" set complete+=k~/.config/nvim/dict/myself.md

"function! ToggleSpelling()
"if &spell
"setlocal nospell
""echo &spell
"echo "disable spell"
"else
"setlocal spell
""echo &spell
"echo "enable spell"
"endif
"endfunction

" TODO
"nnoremap <space>ss <cmd>call ToggleSpelling()<cr>
" " is's silent
" TODO:: auto disappeard in some seconds

" need set spell
" fastly quick fix spell error
" TODO: ???
" inoremap <silent> <A-h> <c-g>u<Esc>[s1z=`]a<c-g>u
"nnoremap <A-h> <c-g>u<Esc>[s1z=`]a<c-g>u

"nnoremap <space>qe z=

" personal tips
" nnoremap <leader>ed  <Cmd>e ~/.config/nvim/dict/myself.md<CR>
" spell good words
" nnoremap <leader>es  <Cmd>e ~/.config/nvim/spell/myspell.utf-8.add<CR>
"
" exec "nohlsearch"

" EditorConfigReload
" let g:EditorConfig_verbose=1

"let g:vimtex_view_method='zathura'
" need set this conceallevel to level 2, to fix width to large
"
" let g:tex_flavor='latex'
" let g:vimtex_quickfix_mode=0
" let g:tex_conceal='abdmg'

" fixed latex filetype(plaintex)
" autocmd BufRead,BufNewFile *.tex set filetype=tex
" autocmd! FileType *.tex set filetype=tex

"set conceallevel=2

augroup FormatCommand
  autocmd BufWritePre *.yaml,*.vim call FormatFile()
augroup END

augroup refreshdotfile
  autocmd!
  au BufWritePost ~/.local/share/chezmoi/dot_* :call ChezmoiSource()
augroup END

" add i in the end of line, to enter insert mode
nnoremap <silent> <space>tK <cmd>call Terminal()<cr>i

nnoremap <silent> <leader>ts :call ToggleStatusLine()<CR>

nnoremap <silent> <space>eh <cmd>call FindVanilla()<cr>

" NOTE: This same file type will overwrite

augroup quickquit
  autocmd!
  autocmd FileType lspinfo,startuptime,help,qf,quickrun,snippets,tsplayground nnoremap <silent> q :q<cr>
augroup END

augroup cursorline_goggle
  autocmd InsertEnter * setlocal nocursorline
  autocmd InsertLeave * setlocal cursorline
  autocmd FileType help setlocal nocursorline
augroup END
