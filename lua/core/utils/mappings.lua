-- ref: https://github.com/LunarVim/LunarVim/blob/rolling/lua/lvim/keymappings.lua
local g = vim.g

g.mapleader = " "

vim.keymap.set("n", "<space>helo", function()
  vim.notify("  Hello, Neovim", "info", { title = "welcome" })
end, { desc = "hello, neovim" })
vim.keymap.set("n", "U", "<C-r>", { desc = "undo" })
vim.keymap.set("n", "q", "")
vim.keymap.set("n", "<space>bd", "<cmd>bdelete<cr>", { desc = "delete current buffer" })
vim.keymap.set({ "n", "v" }, "<space><space>", ":", { desc = "command mode" })
vim.keymap.set("i", "jk", "<esc>", { desc = "escape insert mode" })
vim.keymap.set("n", "<space>qq", "<cmd>q<cr>", { desc = "quit neovim" })
vim.keymap.set({ "n", "v" }, "H", "0", { desc = "jump head of line" })
vim.keymap.set({ "n", "v" }, "L", "$", { desc = "jump end of line" })

vim.cmd([[
"let g:mapleader = " "
" let g:mapleader = "\<Space>"

" create blankline nto formatoptions
"nnoremap <silent> <leader>o :set paste<cr>o<esc>:set nopaste<cr>
"nnoremap <silent> <leader>O :set paste<cr>O<esc>:set nopaste<cr>

" load current config file
" nnoremap <leader>so <cmd>so % <bar> lua vim.notify("Finished refresh current file.")<cr>
" nnoremap <silent> <leader>so <cmd>luafile %<cr> :lua vim.notify("Finished refresh current file.")<cr>

" continue indent
vnoremap >> >gv
vnoremap << <gv

" buffer
nnoremap <silent> <leader><tab> :bp<CR>
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bx <cmd>ene<cr>

" quit window
" nnoremap <silent> <space>qy :set confirm q<CR>
"  nnoremap <silent> <space>qe :e!<cr>

" note this <cr> not have virtual space
nnoremap <silent> <leader>fs :w<cr>
nnoremap <silent> <C-s> :<C-U>w<cr>:lua vim.notify("﬚  save file")<cr>

nnoremap <leader>qh q:

nnoremap <leader>w <C-w>
nnoremap <silent> <leader>bM :messages<cr>

" clear or highlight search words
"nnoremap <silent> <SPACE>sc <cmd>nohlsearch<cr>
"nnoremap <silent> <esc> :set invhlsearch<return><C-L><esc>
" in neovim 0.6, you can use Ctrl + l to clear it
" @deprecated
"nnoremap <space>bc <cmd>set invhlsearch<cr>
nnoremap <silent> <esc> :noh<return><C-L><esc>

" is same to neorg start, but is no effect
"nnoremap <silent> <space>tn <cmd>setlocal invnumber<cr>

"autocmd FileType norg
"vnoremap <space>nn mzI+<esc>A+<esc>`z

nnoremap <silent> <leader>tn <cmd>setlocal invnumber<cr>

" copy and yank with system
" selsct some text, copy it ro system clipboard
vnoremap <space>yy "+y
" in normal mode, like Y to copy current line,
" but copy it to system clipboard
"
" == yank
"nnoremap <space>yy "*Y <cmd> echom "Finish to copy your system clipboard"<cr>
nnoremap <space>yy "*Y

" copy
"noremap <space>P "*P
noremap <space>pp "*p

"nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar> echom "Finished copy fpath."<cr>
nnoremap <silent> <space>yp :<C-U>let @+=expand('%:p') <bar> lua vim.notify(" 🦜 Copy Fpath")<cr>

" toggle spell
nnoremap <space>ss <cmd>setlocal invspell <bar> lua vim.notify("Toggle Spell")<cr>

" nnoremap <silent> <space>hh <cmd>help vanilla.txt<cr>

nnoremap <leader>bs  <Cmd>e /tmp/scratch.txt<CR>
nnoremap <leader>bb  <Cmd>e `mktemp -t neovim-scratch-XXXXXX`<CR>

      " ["<C-c>"] = { "<cmd> %y+ <CR>", "  copy whole file" },
nnoremap <silent> <leader>tl :setlocal invlist<cr>

" fzf's vimplugin
nnoremap <silent> <leader>fu :FZF<cr>

nnoremap <silent> <space>ba :%bw<cr>
]])

-- load custom_map
require("user.keybindings").custom_map()
