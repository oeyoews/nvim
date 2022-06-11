" command: Scripts
command! Scripts vsplit | enew|pu=execute('scriptnames')

" command: HI : redirect new buffer to ourputs
command! -nargs=1 -complete=highlight HI enew|pu=execute('hi <args>')

" smart quit some window
autocmd! FileType lspinfo,startuptime,help,qf,quickrun,snippets,tsplayground nnoremap <silent> q :q<cr>
