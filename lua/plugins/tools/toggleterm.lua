require("toggleterm").setup({
  direction = "float",

  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    --'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    border = "curved",
    winblend = 3,
  },
  highlights = {
    -- highlights which map to a highlight group name and a table of it's values
    -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
    Normal = {
      -- guibg = ,
    },
    NormalFloat = {
      link = "Normal",
    },
    FloatBorder = {
      guifg = "#3D59A1",
    },
  },
})

vim.cmd([[
  nnoremap <silent> <leader>tk :ToggleTerm<cr>
]])
