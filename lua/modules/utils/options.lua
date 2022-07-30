local g = vim.g
local opt = vim.opt

-- have "press enter or other command continue" error, and save shake for null-ls or normal conditions
-- https://github.com/folke/which-key.nvim/issues/301
if oeyoews.nvim_version > 7 then
  vim.opt.cmdheight = 0
  -- fix gg temporarily
  vim.keymap.set("n", "gg", "1gg", {
    silent = true,
    desc = " cmdheight enable",
  })
end

-- use filetype.lua instead of filetype.vim. it's enabled by default in neovim 0.8 (nightly)
if oeyoews.nvim_version < 8 then
  g.did_load_filetypes = 0
  g.do_filetype_lua = 1
end

g.python3_host_prog = "/usr/bin/python3"

local default_options = {
  textwidth = 120,
  cmdwinheight = 5,
  display = "lastline",
  -- option: 0 => hide statusline, 3 global statusline
  laststatus = 0,
  updatetime = 200,
  timeoutlen = 1000,
  splitright = true,
  splitbelow = true,
  expandtab = true,
  smartcase = false,
  smartindent = true,
  ignorecase = true,
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  mouse = "nv",
  cursorline = true,
  lazyredraw = true,
  termguicolors = true,
  undofile = true,
  ttyfast = true,
  linebreak = true,
  hidden = true,
  confirm = true,
  showcmd = false,
  showmode = false,
  backup = false,
  swapfile = false,
  foldenable = false,
  incsearch = true,
  hlsearch = true,
  vb = true,
  autochdir = true,
  wrap = false,
  number = true,
  relativenumber = true,
  numberwidth = 4,
  ruler = false,
  signcolumn = "yes", -- silent side number shake
  history = 500,
  pumheight = 10, -- show complete menu numbers
  showtabline = 2,
  title = false,
  titlestring = "%<%F%=%l/%L - nvim",
  shell = "/bin/zsh",
  -- https://github.com/LunarVim/LunarVim/issues/2294#issuecomment-1045810429
  -- eob to hide tilder
  fillchars = {
    horiz = "━",
    horizup = "┻",
    horizdown = "┳",
    vert = "┃",
    vertleft = "┨",
    vertright = "┣",
    verthoriz = "╋",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- vert = "⣿", -- alternatives │▕
    -- diff = "╱", -- alternatives = ⣿ ░ ─
    -- msgsep = " ",
    -- foldsep = "│",
    -- foldclose = "▸",
    -- foldopen = "▾",
    fold = " ",
    foldopen = "",
    foldsep = " ",
    foldclose = "",
  },
  -- 
  spelllang = { "en", "cjk" },
  list = false,
  listchars = {
    tab = " ",
    space = "•",
  }, -- set noexpandtab && :%ret! 4
}

-- can't put pairs options
opt.shortmess:append("acsI")
opt.whichwrap:append("<,>,[,]") -- wrap in line end
-- opt.package.path:append("test")

for k, v in pairs(default_options) do
  vim.opt[k] = v
end

-- opt.clipboard = "unnamedplus"
-- set shadafile(neovim) path
vim.schedule(function()
  -- vim.opt.shadafile = vim.fn.expand("$HOME") .. "/.local/share/nvim/shada/main.shada"
  vim.opt.shadafile = vim.fn.stdpath(oeyoews.nvim_version > 7 and "state" or "data") .. "/shada/main.shada"
  vim.cmd([[ silent! rsh ]])
end)
