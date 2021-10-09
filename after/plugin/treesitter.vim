if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua << EOF

local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()
local tree_configs = require('nvim-treesitter.configs')

-- add some parsers

-- for markdown title highlight
parser_configs.markdown = {
  install_info = {
    url = "https://github.com/ikatyang/tree-sitter-markdown",
    files = {"src/parser.c", "src/scanner.cc"},
    },
  }

tree_configs.setup {
  refactor = {
    -- highlight scope code
    highlight_current_scope = { enable =false},
    -- highlight define and refrence
    highlight_definitions = { enable = true},
    },

  -- install some different parsers automatically 
  ensure_installed = {
    "c",
    "python",
    "go",
    "html",
    "css",
    "bash",
    "toml",
    "vue",
    "json",
    "markdown",
    "lua",
    "vim",
    "query",
    "yaml",
    "javascript",
    "typescript",
    "comment",
    "cmake",
    },

  highlight = {
  enable = true,
  disable = {}
  },

 -- ??
 incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  -- debug for code
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },

	query_linter = {
		enable = true,
		use_virtual_text = true,
		lint_events = {"BufWrite", "CursorHold"},
	},

}
EOF
