" command Sc redir @">|silent scriptnames|redir END|enew|put
command! Scripts enew|pu=execute('scriptnames') 

" smart quit for some filetype
" TODO
autocmd! FileType help,qf,startuptime,quickrun,snippets nnoremap <silent> q <Cmd>q<CR>
" autocmd FileType markdown colorscheme zephyr
