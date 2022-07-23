-- ref: https://github.com/LunarVim/LunarVim/blob/rolling/lua/lvim/keymappings.lua
local g = vim.g

g.mapleader = " "

-- mapping
local keymappings_set = {}

keymappings_set = {
  {
    "n",
    "<space>helo",
    function()
      vim.notify("  Hello, Neovim", "info", { title = "welcome" })
    end,
    { desc = "hello, neovim" },
  },
  { { "n", "v" }, "<space><space>", ":", "command mode" },
  { { "n", "v" }, "H", "0", "jump head of line" },
  { { "n", "v" }, "L", "$", "jump end of line" },
  { "n", "U", "<C-r>", "undo change" },
  { "n", "q", "disable macro in normal mode" },
  { "n", "<space>bd", "<cmd>bdelete<cr>", "delete current buffer" },
  { "i", "jk", "<esc>", "escape insert mode" },
  { "n", "<space>qq", "<cmd>q<cr>", "quit neovim" },
  { "v", ">>", ">gv", "right indent" },
  { "v", "<<", "<gv", "left indent" },
  { "n", "<space><tab>", "<cmd>bp<cr>", "previout buffer" },
  { "n", "<space>bn", "<cmd>bn<cr>", "next buffer" },
  { "n", "<space>bx", "<cmd>ene<cr>", "new buffer" },
  { "n", "<leader>w", "<C-W>", "map window prefix" },
  { "n", "<leader>fs", ":w<cr>", "save file" },
  { "n", "<leader>bM", ":messages<cr>", "messages" },
  { "n", "<leader>tn", ":setlocal invnumber<cr>", "toggle show number" },
  { "n", "<leader>ss", ":setlocal invspell<cr>", "toggle spell" },
  { "n", "<leader>tl", ":setlocal invlist<cr>", "toggle list" },
}

oeyoews.kmap(keymappings_set)

vim.cmd([[
"let g:mapleader = " "
" let g:mapleader = "\<Space>"

" create blankline nto formatoptions
"nnoremap <silent> <leader>o :set paste<cr>o<esc>:set nopaste<cr>
"nnoremap <silent> <leader>O :set paste<cr>O<esc>:set nopaste<cr>

" load current config file
" nnoremap <leader>so <cmd>so % <bar> lua vim.notify("Finished refresh current file.")<cr>
" nnoremap <silent> <leader>so <cmd>luafile %<cr> :lua vim.notify("Finished refresh current file.")<cr>

" quit window
" nnoremap <silent> <space>qy :set confirm q<CR>
"  nnoremap <silent> <space>qe :e!<cr>

" note this <cr> not have virtual space
nnoremap <silent> <C-s> :<C-U>w<cr>:lua vim.notify("﬚  save file")<cr>

" bug todo-comment
" nnoremap <leader>qh q:

" clear or highlight search words
"nnoremap <silent> <SPACE>sc <cmd>nohlsearch<cr>
"nnoremap <silent> <esc> :set invhlsearch<return><C-L><esc>
" in neovim 0.6, you can use Ctrl + l to clear it
" @deprecated
"nnoremap <space>bc <cmd>set invhlsearch<cr>
nnoremap <silent> <esc> :noh<return><C-L><esc>

" is same to neorg start, but is no effect
" nnoremap <silent> <leader>tn <cmd>setlocal invnumber<cr>

"autocmd FileType norg
"vnoremap <space>nn mzI+<esc>A+<esc>`z

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

nnoremap <leader>bs  <Cmd>e /tmp/scratch.txt<CR>
nnoremap <leader>bb  <Cmd>e `mktemp -t neovim-scratch-XXXXXX`<CR>

      " ["<C-c>"] = { "<cmd> %y+ <CR>", "  copy whole file" },

" fzf's vimplugin
nnoremap <silent> <leader>fu :FZF<cr>

nnoremap <silent> <space>ba :%bw<cr>
]])

-- load custom_map
require("user.keybindings").custom_map()
