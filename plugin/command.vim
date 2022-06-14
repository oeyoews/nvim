" NOTE: This same file type will overwrite

" general output
command! -nargs=1 Out enew|pu=execute('<args>')

" command: Scripts
command! Scripts split | enew|pu=execute('scriptnames')

" command: HI : redirect new buffer to ourputs
command! -nargs=1 -complete=highlight HI enew|pu=execute('hi <args>')

command! -nargs=?  -complete=color Themes colorscheme <args>

" smart quit some window
autocmd! FileType lspinfo,startuptime,help,qf,quickrun,snippets,tsplayground nnoremap <silent> q :q<cr>

" autoload refresh custom/config/ all files, when they changed, not use echo
" message
" autocmd! BufWritePost ~/.config/nvim/custom/config/*.vim source %
autocmd! BufWritePost *.vim source %
autocmd! BufWritePost *.lua luafile %

" status: deprecated
" can't reconzie styula.toml
" BUG: cause lsp sumneko can't work, not recommand use FileType easyily
" styula default is double quote
" autocmd! FileType lua nnoremap <silent> <leader>lfl <cmd>!stylua %<cr>
" autocmd! BufWritePost *.lua nnoremap <silent> <leader>lf <cmd>!stylua %<cr>
" autocmd! BufWritePost *.lua <silent> !stylua %