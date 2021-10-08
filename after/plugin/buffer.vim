lua << EOF
require('bufferline').setup {
  options = {
    numbers = "ordinal",
    right_mouse_command = "buffer %d",
    separator_style = "thin",
    offsets = {{filetype = "NvimTree", text = "File Explorer" }},
    }
  }
EOF

" mappings
command! -nargs=1 Goto BufferLineGoToBuffer <args>
command! Pick BufferLinePick

nnoremap <silent><SPACE>ws <cmd>Pick<CR>
nnoremap <silent><SPACE>1 <Cmd>Goto 1<CR>
nnoremap <silent><SPACE>2 <Cmd>Goto 2<CR>
nnoremap <silent><SPACE>3 <Cmd>Goto 3<CR>
nnoremap <silent><SPACE>4 <Cmd>Goto 4<CR>
nnoremap <silent><SPACE>5 <Cmd>Goto 5<CR>
