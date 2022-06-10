vim.cmd [[set completeopt=menu,menuone,noselect,noinsert]]

--vim.cmd [[highlight default GH guifg=#3bb6c4 guibg=NONE]]

local cmp_ok, cmp = pcall(require, "cmp")

local lspkind_ok, lspkind = pcall(require, "lspkind")

local lsp_installer = require "nvim-lsp-installer"

local lspformat_ok, _ = pcall(require, "lsp-format")

if not lsp_installer then return false end

if not lspformat_ok then return false end

if not cmp_ok then return false end

if not lspkind_ok then return false end

local servers = {
  --'gopls',
  --'texlab',
  -- 'diagnosticls',
  -- 'yamlls',
  -- 'pyright',
  -- 'cssls',
  -- 'tsserver',
  'html',
  'cmake',
  'vimls',
  'sumneko_lua',
  'clangd',
  'jsonls',
  'bashls',
}

lsp_installer.setup({
  automatic_installation = true,
  ensure_installed = servers,
  ui = {
    icons = {
      server_installed = "🍺",
      server_pending = "🔏",
      server_uninstalled = "🌽"
    }
  }
})

cmp.setup({
  view = {
    entries = "custom" -- can be "custom", "wildmenu" or "native"
    --entries = { name = 'custom', selection_order = 'near_cursor' }
  },
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },

  -- mappings
  mapping = {
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    -- ['<C-e>'] = cmp.mapping.complete(),
    ['<C-c>'] = cmp.mapping.close(), },

  -- menu
  formatting = {
    fields = { 'kind', 'abbr', 'menu' },
    format = lspkind.cmp_format({
      -- https://code.visualstudio.com/api/references/icons-in-labels
      symbol_map = {
        Text = " ",
        Method = " ",
        Function = " ",
        Constructor = "",
        Field = "ﰠ",
        Variable = "",
        Class = "ﴯ",
        Interface = "",
        Module = "",
        Property = "ﰠ ",
        Unit = "",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        Reference = "",
        File = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "",
        Event = "",
        Operator = " ",
        TypeParameter = ""
      },
      mode = "symbol",
      --mode = "symbol_text",
      maxwidth = 50,
      menu = ({
        nvim_lsp = "(LSP)",
        buffer = "(Buffer)",
        ultisnips = "(Snipppet)",
        nvim_lua = "(Lua)",
        treesitter = "(TS)",
        path = "(Path)",
        emoji = "(emoji)"
      })
    }),
  },

  -- config default window
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered()
  },

  experimental = {
    --ghost_text = {hl_group = 'GH'}
    ghost_text = true
  },

  -- sources
  sources = {
    { name = 'cmdline' },
    { name = 'nvim_lsp' },
    { name = 'buffer', keyword_length = 2 },
    { name = 'ultisnips' },
    { name = 'path' },
    { name = 'nvim-lua' },
    { name = 'emoji' },
  },

})


local nvim_lsp = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    -- ??
    flags = {
      debounce_text_changes = 150,
    },
    --format code
    on_attach = require "lsp-format".on_attach,
    -- link lsp-servers
    capabilities = capabilities
  }
  --require 'illuminate'.on_attach()
  require "lsp_signature".on_attach()
end

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})
-- icon note this order in last
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  --underline = true,
  update_in_insert = false,
  severity_sort = false,
  virtual_text = {
    spacing = 2,
    prefix = ""
  },
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
}
)

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  --view = {
  --entries = { name = 'wildmenu', separator = '|' }
  --},
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline('?', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'cmdline' }
  }, {
    { name = 'path' }
  })
})

vim.cmd [[
  nnoremap <silent> <leader>li :LspInfo<cr>
]]
