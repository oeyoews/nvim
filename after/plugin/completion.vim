lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        -- For `ultisnips` user.
         vim.fn["UltiSnips#Anon"](args.body)
      end,
    },
    mapping = {
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
      { name = 'nvim_lsp' },

      -- For ultisnips user.
      { name = 'ultisnips' },

      { name = 'buffer' },
    }
  })

  -- Setup lspconfig.
  require('lspconfig').clangd.setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
EOF

" Use <Tab> and <S-Tab> to navigate through popup menu
" must in this file
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
