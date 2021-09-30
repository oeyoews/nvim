let g:startify_padding_left = 3
let g:startify_enable_special = 1
let g:startify_custom_indices = [ 'f' ]
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['       Recent Files:']            },
      \ { 'type': 'dir',       'header': ['       Recent Projects: '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['       Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['       Bookmarks']      },
      \ { 'type': 'commands',  'header': ['       Commands']       },
      \ ]
" let g:startify_commands = [
"       \ {'h': ':help'},
"       \ ]
let g:startify_bookmarks = [
      \ { 'v': '~/.config/nvim/init.vim' },
      \ ]
let g:startify_custom_header =
            \ startify#fortune#cowsay('', '═','║','╔','╗','╝','╚')
" let g:startify_custom_header = 'startify#center(startify#fortune#boxed())'
let g:startify_relative_path = 1
let g:startify_use_env = 1
autocmd User Startified setlocal cursorline
let g:startify_custom_footer =
      \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

let g:startify_center = 40
command! Time StartupTime

" let g:startify_custom_header_quotes = [
"       \[ '你以为的林荫小道，其实早已车水马龙',' ——莎士比亚'],
"       \[ ' 即使那个地方被无数人留下痕迹，但我们依然向往',' ——郭沫若' ],
"       \[ ' 当你能轻松进入的时候，你就应该明白，不是你厉害，',' 而是对方能够容忍你的渺小 ',' ——保尔柯察金' ],
"       \[' 即使那里成了黑洞、也是我一生想探索的地方。',' ——霍金'],
"       \['你向往的林荫小路，其实每个清晨和夜晚都挂满了白霜',' ——列夫·坎窝德基'],
"       \['手指有多快，分贝就有多高',' ——贝多芬'],
"       \[' 我不佩服第一个打通隧道的人，我佩服扩宽隧道的人',' ——中铁一局']
"       \ ]
