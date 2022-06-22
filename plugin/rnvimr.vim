" rnvimr TODO highlight
nnoremap <silent> <leader>ft :RnvimrToggle<CR>
" Fullscreen for initial layout
let g:rnvimr_layout = {
           \ 'relative': 'editor',
           \ 'width': &columns,
           \ 'height': &lines - 2,
           \ 'col': 0,
           \ 'row': 0,
           \ 'style': 'minimal'
           \ }
"
