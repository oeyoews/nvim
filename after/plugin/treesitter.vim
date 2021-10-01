if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua << EOF

require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_current_scope = { enable =false},
    },

  refactor = {
    highlight_definitions = { enable = false},
    },

  rainbow = {
  enable = false,
  extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
  max_file_lines = 1000,
  },

  ensure_installed = {
    "html",
    "lua",
    "c",
    "json",
    "query",
    "bash",
    "yaml",
    "vim",
    "toml",
    "css",
    "comment",
    "cmake",
    "python",
    },

  -- todo
  highlight = {
  enable = true,
  disable = {}
  },

 incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

EOF
