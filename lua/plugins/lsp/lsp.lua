--  comment this to fix cr
-- vim.cmd([[
-- set completeopt=menu,menuone,noselect,noinsert
-- ]])

--vim.cmd [[highlight default GH guifg=#3bb6c4 guibg=NONE]]

local cmp_ok, cmp = pcall(require, "cmp")

if not cmp_ok then
  vim.notify "cmp not founded"
  return false
end

local lspkind_ok, lspkind = pcall(require, "lspkind")

if not lspkind_ok then
  vim.notify "lspkind not founded"
  return false
end

local lspformat_ok, lsp_format = pcall(require, "lsp-format")

if not lspformat_ok then
  vim.notify "lsp_format not founded"
  return false
end

local servers = require("plugins.lsp.lspinstall").servers

local symbol_map = {
  --         
  -- Function = "",
  -- Keyword = "",
  Text = "",
  Method = "",
  Function = "ƒ",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "𝓒",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "🔐",
  Snippet = "",
  Color = "",
  Reference = "",
  File = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "𝓢",
  Event = "",
  Operator = "",
  TypeParameter = "𝙏",
}

cmp.setup {
  view = {
    entries = "custom", -- can be "custom", "wildmenu" or "native"
    --entries = { name = 'custom', selection_order = 'near_cursor' }
  },
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },

  -- mappings
  mapping = {
    ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
    ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
    ["<CR>"] = cmp.mapping.confirm { select = false },
    -- ['<C-e>'] = cmp.mapping.complete(),
    ["<C-c>"] = cmp.mapping.close(),
  },

  -- menu
  formatting = {
    fields = {
      "kind",
      "abbr",
      "menu",
    },
    format = lspkind.cmp_format {
      -- https://code.visualstudio.com/api/references/icons-in-labels
      symbol_map = symbol_map,
      mode = "symbol",
      --mode = "symbol_text",
      maxwidth = 50,
      menu = {
        nvim_lsp = "(LSP)",
        buffer = "(Buf)",
        ultisnips = "(Sni)",
        nvim_lua = "(Lua)",
        path = "(Pat)",
        emoji = "(Emo)",
      },
    },
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
    { name = "nvim_lsp" },
    { name = "buffer", keyword_length = 3 },
    { name = "ultisnips" },
    { name = "path" },
    { name = "neorg" },
    { name = "emoji" },
    { name = "nvim-lua" },
  },
}

local lspconfig = require "lspconfig"

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- ??
    flags = {
      debounce_text_changes = 150,
    },
    --format code
    on_attach = lsp_format.on_attach,
    -- link lsp-servers
    capabilities = capabilities,
  }
end
