" " Mappings
" NOTE: this plugin must enable termguicolor
nnoremap <silent> <SPACE>ft :NvimTreeToggle<CR>

" show hidden files
let g:nvim_tree_hide_dotfiles = 1
" jump empty files
let g:nvim_tree_group_empty = 1
let g:nvim_tree_git_hl = 1
" locate open files
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_indent_markers = 0 
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_respect_buf_cwd = 1
let g:nvim_tree_quit_on_open = 1 

lua << EOF
-- following options are the default
require'nvim-tree'.setup {
  -- disables netrw completely
  disable_netrw       = true,
  -- hijack netrw window on startup
  hijack_netrw        = true,
  -- open the tree when running this setup function
  open_on_setup       = true,
  -- will not open on setup if the filetype is in this list
  ignore_ft_on_setup  = {},
  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  auto_close          = true,
  -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
  open_on_tab         = true,
  -- hijack the cursor in the tree to put it at the start of the filename
  hijack_cursor       = false,
  -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually) 
  update_cwd          = true,
  -- show lsp diagnostics in the signcolumn
  lsp_diagnostics     = true,
  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
  update_focused_file = {
    -- enables the feature
    enable      = true,
    -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
    -- only relevant when `update_focused_file.enable` is true
    update_cwd  = true,
    -- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
    -- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
    ignore_list = {}
  },
  -- configuration options for the system open command (`s` in the tree by default)
  system_open = {
    -- the command to run this, leaving nil should work in most cases
    cmd  = nil,
    -- the command arguments as a list
    args = {}
  },

  view = {
    width = 30,
    side = 'right',
    auto_resize = true,
    mappings = {
      -- custom only false will merge the list with the default mappings
      -- if true, it will only use your list to set the mappings
      custom_only = false,
      -- list of mappings to set on the tree manually
      list = {}
    }
  }
}
EOF
