if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
 local saga = require 'lspsaga'

 saga.init_lsp_saga {
   -- todo ⚠ ✗ 
   error_sign = "",
   warn_sign = "",
   hint_sign = '',
   infor_sign = '',
   border_style = "round",
   }

EOF

" Mappings
" nnoremap <silent> <> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent> <SPACE>qf :Lspsaga code_action<CR>
nnoremap <silent> <F2> :Lspsaga rename<CR>
" nnoremap <silent> gd :Lspsaga preview_definition<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
