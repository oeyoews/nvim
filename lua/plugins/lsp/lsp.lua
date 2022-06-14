vim.cmd([[set completeopt=menu,menuone,noselect,noinsert]])

--vim.cmd [[highlight default GH guifg=#3bb6c4 guibg=NONE]]

local cmp_ok, cmp = pcall(require, 'cmp')

local lspkind_ok, lspkind = pcall(require, 'lspkind')

local lsp_installer = require('nvim-lsp-installer')

local lspformat_ok, _ = pcall(require, 'lsp-format')

local servers = {
  'bashls',
  -- 'cssls',
  'cmake',
  'clangd',
  -- 'diagnosticls',
  'html',
  'jsonls',
  -- need install shellcheck(it dependency some haskell package, download aur's bin is fast), if lsp not work, please check :LspLog to see more information
  'pyright',
  'gopls',
  'sumneko_lua',
  -- 'tsserver',
  --'texlab',
  -- 'golangci_lint_ls',
  -- 'yamlls',
  'vimls',
}

local symbol_map = {
        --         
        -- Function = "",
        -- Keyword = "",
        Text = '',
        Method = '',
        Function = 'ƒ',
        Constructor = '',
        Field = '',
        Variable = '',
        Class = '𝓒',
        Interface = '',
        Module = '',
        Property = 'ﰠ',
        Unit = '',
        Value = '',
        Enum = '',
        Keyword = '🔐',
        Snippet = '',
        Color = '',
        Reference = '',
        File = '',
        Folder = '',
        EnumMember = '',
        Constant = '',
        Struct = '𝓢',
        Event = '',
        Operator = '',
        TypeParameter = '𝙏',
}

if not lsp_installer then
  vim.notify('lsp_installer not founded')
  return false
end

if not lspformat_ok then
  vim.notify('lsp_format not founded')
  return false
end

if not cmp_ok then
  vim.notify('cmp not founded')
  return false
end

if not lspkind_ok then
  vim.notify('lspkind not founded')
  return false
end

lsp_installer.setup({
  automatic_installation = true,
  -- comment it bug: will have second notify
  -- ensure_installed = servers,
  ui = {
    icons = {
      server_installed = '🍺',
      server_pending = '🔏',
      server_uninstalled = '🌽',
    },
  },
  github = {
    -- download_url_template = "https://hub.fastgit.xyz/%s/releases/download/%s/%s",
    download_url_template = 'https://github.com/%s/releases/download/%s/%s',
  },
})

cmp.setup({
  view = {
    entries = 'custom', -- can be "custom", "wildmenu" or "native"
    --entries = { name = 'custom', selection_order = 'near_cursor' }
  },
  snippet = {
    expand = function(args)
      vim.fn['UltiSnips#Anon'](args.body)
    end,
  },

  -- mappings
  mapping = {
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    -- ['<C-e>'] = cmp.mapping.complete(),
    ['<C-c>'] = cmp.mapping.close(),
  },

  -- menu
  formatting = {
    fields = {
      'kind',
      'abbr',
      'menu'
    },
    format = lspkind.cmp_format({
      -- https://code.visualstudio.com/api/references/icons-in-labels
      symbol_map = symbol_map,
      mode = 'symbol',
      --mode = "symbol_text",
      maxwidth = 50,
      menu = {
        nvim_lsp = '(LSP)',
        buffer = '(Buf)',
        ultisnips = '(Sni)',
        nvim_lua = '(Lua)',
        path = '(Pat)',
        emoji = '(Emo)',
      },
    }),
  },

  -- config default window
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  experimental = {
    --ghost_text = {hl_group = 'GH'}
    ghost_text = true,
  },

  -- sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'ultisnips' },
    { name = 'path' },
    { name = 'neorg' },
    { name = 'emoji' },
    { name = 'nvim-lua' },
  },
})

local lspconfig = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()

local lsp_format = require('lsp-format')

capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    -- ??
    flags = {
      debounce_text_changes = 150,
    },
    --format code
    on_attach = lsp_format.on_attach,
    -- link lsp-servers
    capabilities = capabilities,
  })
end

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = 'rounded',
})
-- icon note this order in last
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  --underline = true,
  update_in_insert = true,
  severity_sort = false,
  virtual_text = {
    spacing = 2,
    prefix = '',
  },
  float = {
    focusable = false,
    style = 'minimal',
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
})

vim.cmd([[
  nnoremap <silent> <leader>li :LspInfo<cr>
]])
