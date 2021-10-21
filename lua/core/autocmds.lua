vim.cmd [[
command! Scripts enew|pu=execute('scriptnames')

command! -nargs=1 -complete=highlight HI enew|pu=execute('<args>')

" alias colorscheme to Theme
command! -nargs=?  -complete=color Theme colorscheme <args>

" smart quit netrw
autocmd! FileType help,qf,startuptime,quickrun,snippets,tsplayground nnoremap <silent> q <Cmd>q<CR>

" fix latex filetype
autocmd BufRead,BufNewFile *.tex set filetype=tex
]]
