vim.g.mapleader = " "

local keymappings_set = {}

--  @not use this silent = true
vim.keymap.set({ "n", "v" }, "<space><space>", ":", { desc = "  cmd mode" })
keymappings_set = {
  { "<space>yp", ":<C-U>let @+=expand('%:p')<cr>", " copy file path" },
  { "<space>pp", '"*p', " past to neovim" },
  { "<space>yy", '"*Y', " past to system" },
  { "<space>yy", '"+y', " past to system", "v" },
  { "<esc>", ":noh<cr><C-L><esc>", " clear highlight and screen" },
  { "<space>fu", ":FZF<cr>", "fzf" },
  { "<space>bb", ":e `mktemp -t neovim-scratch-XXXXXX`<cr>", " edit temp file" },
  { "<space>ba", ":%bw<cr>", " remove all buffers" },
  { "<space>bs", ":e /tmp/scratch.txt<cr>", " edit scratch.txt" },
  { "H", "0", " jump head of line", { "n", "v" } },
  { "L", "$", "  jump end of line", { "n", "v" } },
  { "q", "", "disable macro in normal mode", { "n", "v" } },
  { "jk", "<esc>", "escape insert mode", "i" },
  { ">>", ">gv", "right indent", "v" },
  { "<<", "<gv", "left indent", "v" },
  { "U", "<C-r>", "undo change" },
  { "<space>bd", "<cmd>bdelete<cr>", " delete current buffer" },
  { "<space>qq", "<cmd>q<cr>", "quit neovim" },
  { "<space><tab>", "<cmd>bp<cr>", "  goto previout buffer" },
  { "<space>bn", "<cmd>bn<cr>", "  goto next buffer" },
  { "<space>bx", "<cmd>ene<cr>", "🪐 new buffer" },
  { "<leader>w", "<C-W>", "map window prefix" },
  { "<leader>fs", ":w<cr>", " save file" },
  { "<leader>bM", ":messages<cr>", "ﮠ messages" },
  { "<leader>tn", ":setlocal invnumber<cr>", "  toggle show number" },
  { "<leader>ss", ":setlocal invspell<cr>", "𝒮 toggle spell" },
  { "<leader>tl", ":setlocal invlist<cr>", "  toggle list" },
}

-- core mapping
oeyoews.kmap(keymappings_set)
-- load custom_map
require("user.keybindings").setup()
