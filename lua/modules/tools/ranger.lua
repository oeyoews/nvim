local g = vim.g

g.rnvimr_enable_ex = true
g.rnvimr_enable_picker = true
g.rnvimr_edit_cmd = "drop"
g.rnvimr_draw_border = false
g.rnvimr_hide_gitignore = true
g.rnvimr_enable_bw = true
g.rnvimr_shadow_winblend = 70

vim.cmd([[

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

" Draw border with both
let g:rnvimr_ranger_cmd = ['ranger', '--cmd=set draw_borders both']

" Link CursorLine into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursorLine

" Map Rnvimr action
let g:rnvimr_action = {
\ '<C-t>': 'NvimEdit tabedit',
\ '<C-x>': 'NvimEdit split',
\ '<C-v>': 'NvimEdit vsplit',
\ 'gw': 'JumpNvimCwd',
\ 'yw': 'EmitRangerCwd'
\ }

" Add views for Ranger to adapt the size of floating window
let g:rnvimr_ranger_views = [
\ {'minwidth': 90, 'ratio': []},
\ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
\ {'maxwidth': 49, 'ratio': [1]}
\ ]

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
\ {'width': 0.600, 'height': 0.600},
\ {},
\ {'width': 0.800, 'height': 0.800},
\ {'width': 0.950, 'height': 0.950},
\ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
\ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
\ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
\ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
\ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
\ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
\ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
\ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
\ ]

" Only use initial preset layout
" let g:rnvimr_presets = [{}]

" Customize the initial layout
let g:rnvimr_layout = {
\ 'relative': 'editor',
\ 'width': float2nr(round(0.7 * &columns)),
\ 'height': float2nr(round(0.7 * &lines)),
\ 'col': float2nr(round(0.15 * &columns)),
\ 'row': float2nr(round(0.15 * &lines)),
\ 'style': 'minimal'
\ }

" Fullscreen for initial layout
let g:rnvimr_layout = {
\ 'relative': 'editor',
\ 'width': &columns,
\ 'height': &lines - 2,
\ 'col': 0,
\ 'row': 0,
\ 'style': 'minimal'
\ }

" rnvimr TODO highlight
]])

vim.keymap.set("n", "<space>ft", "<cmd>RnvimrToggle<cr>", { desc = "ranger" })
