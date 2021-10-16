" command Sc redir @">|silent scriptnames|redir END|enew|put
command! Scripts enew|pu=execute('scriptnames')
command! -nargs=1 -complete=highlight Redir   enew|pu=execute('<args>')

" alias colorscheme to Theme
command! -nargs=?  -complete=color Theme colorscheme <args>

" smart quit netrw
autocmd! FileType help,qf,startuptime,quickrun,snippets,tsplayground nnoremap <silent> q <Cmd>q<CR>

" fix latex filetype
autocmd BufRead,BufNewFile *.tex set filetype=tex
