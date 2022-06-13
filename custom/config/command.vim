" command: Scripts
command! Scripts vsplit | enew|pu=execute('scriptnames')

" command: HI : redirect new buffer to ourputs
command! -nargs=1 -complete=highlight HI enew|pu=execute('hi <args>')

command! -nargs=?  -complete=color Themes colorscheme <args>

" smart quit some window
autocmd! FileType lspinfo,startuptime,help,qf,quickrun,snippets,tsplayground nnoremap <silent> q :q<cr>

" autoload refresh custom/config/ all files, when they changed, not use echo
" message
" autocmd! BufWritePost ~/.config/nvim/custom/config/*.vim source %
autocmd! BufWritePost *.vim source %

autocmd! FileType lua nnoremap <silent> <leader>lfl <cmd>!stylua %<cr>
