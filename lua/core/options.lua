local g, opt = vim.g, vim.opt

g.did_load_filetypes = 0
g.do_filetype_lua = 1
g.python3_host_prog = "/usr/bin/python3"

opt.textwidth = 80
-- global statusline @nvim_0.7
opt.laststatus = 3

-- opt.colorcolumn = "99999" -- fixes indentline for now
opt.completeopt = { "menuone", "noselect" }
opt.pumheight = 10
-- opt.guifont = "monospace:h27"

-- time
opt.updatetime = 200
opt.timeoutlen = 1000

-- disable nvim intro
opt.shortmess:append("acsI")
opt.splitright = true
opt.splitbelow = true

-- Indent
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
opt.signcolumn = "yes"
opt.mouse = "a"
opt.fillchars = { eob = " " }
opt.cursorline = true
opt.smartindent = true
opt.lazyredraw = true
opt.termguicolors = true
opt.undofile = true
opt.ttyfast = true

-- opt.signcolumn = true
opt.autochdir = true
opt.wrap = true

-- Number
opt.numberwidth = 2
opt.number = true
opt.ruler = false

-- opt.clipboard = "unnamedplus"
opt.title = true
opt.titlestring = "%<%F%=%l/%L - nvim"
opt.list = true
opt.linebreak = true
opt.hidden = true
opt.ignorecase = true
opt.confirm = true
opt.showcmd = false
opt.showmode = false
opt.backup = false
opt.swapfile = false
opt.foldenable = false
opt.incsearch = true
opt.hlsearch = true
opt.vb = true
opt.shell = "/bin/zsh"
opt.spelllang = { "en", "cjk" }
opt.listchars = { tab = " " }

-- set shada path
-- vim.schedule(function()
--   vim.opt.shadafile = vim.fn.expand("$HOME") .. "/.local/share/nvim/shada/main.shada"
--   vim.cmd([[ silent! rsh ]])
-- end)

-- vim.cmd([[
-- set whichwrap+=<,>,[,]
-- ]])
