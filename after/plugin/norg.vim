lua << EOF
require('neorg').setup {
  -- Tell Neorg what modules to load
  load = {
    ["core.defaults"] = {}, -- Load all the default modules
    ["core.norg.concealer"] = {}, -- Allows for use of icons
    ["core.norg.completion"] = { 
      config = { 
      engine =  "nvim-cmp"
      } 
    },
    ["core.norg.dirman"] = {
      config = {
      workspaces = {
      my_workspace = "~/.neorg"
      }
    }
  }
},
}
EOF

" mappings
nnoremap <leader>fnn <cmd>Neorg<cr>
