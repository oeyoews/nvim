vim.cmd [[
command! Scripts enew|pu=execute('scriptnames')

command! -nargs=1 -complete=highlight HI enew|pu=execute('hi <args>')

" alias colorscheme to Theme
command! -nargs=?  -complete=color Theme colorscheme <args>

" smart quit netrw
autocmd! FileType help,qf,startuptime,quickrun,snippets,tsplayground nnoremap <silent> q <Cmd>q<CR>

" fix latex filetype
autocmd BufRead,BufNewFile *.tex set filetype=tex

" yank
autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}

" restore last cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
