-- note this order
--vim.cmd [[set completeopt=menu,menuone,noselect,noinsert]]
vim.cmd [[set completeopt=menu,menuone,noselect]]
--vim.cmd [[highlight default GH guifg=#3bb6c4 guibg=NONE]]

local cmp_ok, cmp = pcall(require, "cmp")

local lspkind_ok, lspkind = pcall(require, "lspkind")

local servers = {
  'vimls',
  'jsonls',
  'yamlls',
  'clangd',
  'pyright',
  'texlab',
  'tsserver',
  'zk',
  'gopls',
  'cssls',
  'bashls'
}

local lsp_installer = require "nvim-lsp-installer"

if not cmp_ok then return false end
if not lspkind_ok then return false end

lsp_installer.setup({
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
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
    --entries = "custom" -- can be "custom", "wildmenu" or "native"
    entries = { name = 'custom', selection_order = 'near_cursor' }
  },
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end, },

  -- mappings
  mapping = {
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping.complete(),
    ['<C-c>'] = cmp.mapping.close(), },

  -- menu
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol",
      maxwidth = 50,
      menu = ({
        nvim_lsp = "[LSP]",
        buffer = "[Buffer]",
        ultisnips = "[UltiSnips]",
        nvim_lua = "[Lua]",
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
    { name = 'nvim_lsp' },
    { name = 'buffer', keyword_length = 2 },
    { name = 'ultisnips' },
    { name = 'path' },
    { name = 'nvim-lua' },
    { name = 'emoji', insert = true },
    { name = "dictionary", keyword_length = 2 },
  },

})


-- need config in lspinstall
--jsonls: npm i -g vscode-langservers-extracted
-- gopls need go.mod for folder
local nvim_lsp = require('lspconfig')
-- automatically connect language server protocol

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
  require "lsp_signature".on_attach()
end

--vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
--border = "rounded",
--})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})
-- icon note this order in last
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  update_in_insert = true,
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

vim.cmd [[
nnoremap <silent> <leader>li :LspInfo<cr>
]]
