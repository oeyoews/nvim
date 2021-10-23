vim.cmd [[
command! Scripts vsplit | enew|pu=execute('scriptnames')

command! -nargs=1 -complete=highlight HI enew|pu=execute('hi <args>')

" alias colorscheme to Theme
command! -nargs=?  -complete=color Theme colorscheme <args>

" smart quit netrw
autocmd! FileType help,qf,startuptime,quickrun,snippets,tsplayground nnoremap <silent> q <Cmd>q<CR>

autocmd! FileType vim-plug,startuptime, setlocal nornu nonu

" fix latex filetype
autocmd BufRead,BufNewFile *.tex set filetype=tex

" yank
autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch",
      \ timeout=150, on_visual=true}

" restore last cursor location
autocmd! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
