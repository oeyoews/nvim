if !exists('g:loaded_nvimtree') | finish | endif

" ===
" === nvimtree
" ===
lua <<EOF

require'nvim-tree'.setup {
  view = {
    side = 'right',
    auto_resize = true,
    },
  update_to_buf_dir   = {
  enable = true,
  auto_open = true,
  },
update_cwd = true,
auto_close = true, -- close this nvimtree, if the nvimtree is lastwindow
lsp_diagnostics = false,
update_focused_file = {
    enable      = true,
    update_cwd  = true,
  },  -- jump this file for cursor
}
EOF
" jump empty folder
let g:nvim_tree_group_empty = 1
" make folder is color
let g:nvim_tree_highlight_opened_files = 1
" show indent line
let g:nvim_tree_indent_markers = 0 
" add slash in folder
let g:nvim_tree_add_trailing = 0 
let g:nvim_tree_icon_padding = ' '
" open a file, to close this nvimtree
let g:nvim_tree_quit_on_open = 0
let g:nvim_tree_refresh_wait = 500
" show arrows
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folder_arrows': 1,
    \ 'files': 1,
    \ 'folders': 1,  
    \ }

nnoremap <leader>ft <cmd>NvimTreeToggle<cr> 
