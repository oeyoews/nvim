-- note this order
vim.cmd [[set completeopt=menu,menuone,noselect,noinsert]]

-- DEPRECATED: deprecated
--vim.cmd [[highlight default Fs guifg=#3bb6c4 guibg=NONE]]
--local border = { {"╭", "Fs"}, {"─", "Fs"}, {"╮", "Fs"}, {"│", "Fs"},
--{"╯", "Fs"}, {"─", "Fs"}, {"╰", "Fs"}, {"│", "Fs"}, }

-- cmp_lsp
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end, },

    -- mappings
    mapping = {
      ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
      ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
      ['<CR>'] = cmp.mapping.confirm({ select = true}),
      ['<C-e>'] = cmp.mapping.complete(),
      ['<C-c>'] = cmp.mapping.close(), },

      formatting = {
        format = require("lspkind").cmp_format({with_text = true, menu = ({
          nvim_lsp = "",
          buffer = "",
          ultisnips = "",
          nvim_lua = "",
          --   
          --neorg = "",
        })}), },

        window = {
           documentation = cmp.config.window.bordered(),
        },


        sources = {
          { name = 'nvim_lsp' },
          { name = 'buffer', keyword_length = 2 },
          { name = 'ultisnips' },
          { name = 'path' },
          { name = 'nvim-lua' },
          { name = 'emoji', insert = true },
          { name = "dictionary", keyword_length = 2 },
          --{ name = 'cmp_git' }, { name = 'neorg' }, { name = "latex_symbols" }, { name = 'spell' }, { name = 'look' }, { name = 'orgmode' }, { name = 'cmdline' },
        },

      })

      -- need config in lspinstall
      --jsonls: npm i -g vscode-langservers-extracted
      -- gopls need go.mod for folder
      local nvim_lsp = require('lspconfig')
      -- automatically connect language server protocol
      local servers = {
      'vimls',
      'jsonls',
      'yamlls',
      'clangd',
      'pyright',
      --, 'bashls', 'pyright', 'gopls', 'jdtls', 'tsserver', 'html','cssls',
    }
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
    for _, lsp in ipairs(servers) do
      nvim_lsp[lsp].setup {
        flags = {
          debounce_text_changes = 150,
        },
        capabilities = capabilities,
      }
    end

    -- for lua dev cmd
    local luadev = require("lua-dev").setup({
      lspconfig = {
        cmd = {"lua-language-server"}
      },
    })
    nvim_lsp.sumneko_lua.setup(luadev)


    -- icon note this order in last
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
      underline = true,
      update_in_insert = true,
      virtual_text = {
        spacing = 2,
        prefix = '●'
      }
    }
    )
