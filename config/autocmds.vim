" command: Scripts
command! Scripts vsplit | enew|pu=execute('scriptnames')

" command: HI
command! -nargs=1 -complete=highlight HI enew|pu=execute('hi <args>')

" command: Theme
command! -nargs=?  -complete=color Theme colorscheme <args>

" smart quit some window
autocmd! FileType startuptime,help,qf,quickrun,snippets,tsplayground nnoremap <silent> q :q<cr>

" it's confict for last command to quit window fastly
"autocmd! FileType vim-plug,startuptime, setlocal nornu nonu

" fix latex filetype(plaintex)
autocmd BufRead,BufNewFile *.tex set filetype=tex

" yank
autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}

" restore the cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
