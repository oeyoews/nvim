-- init.lua
require('nvim-toggler').setup({
  -- your own inverses
  inverses = {
    ['class'] = 'className',
    ['xelatex'] = 'lualatex',
    ['const'] = 'let',
    ['vim'] = 'emacs',
    ['main'] = 'master',
    ['enable'] = 'disable',
    ['yes'] = 'no',
    ['true'] = 'false',
    ['optional'] = 'required',
  },
  -- removes the default <leader>i keymap
  remove_default_keybinds = true,
})

-- init.lua
vim.keymap.set(
  {
    'n',
    'v',
  },
  '<space>cl',
  require('nvim-toggler').toggle,
  {
    silent = true,
    desc = 'toggle word',
  }
)
