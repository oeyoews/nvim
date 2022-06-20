--vim.cmd [[highlight default GH guifg=#3bb6c4 guibg=NONE]]

-- @nvim_cmp
local cmp_ok, cmp = pcall(require, "cmp")

if not cmp_ok then
  vim.notify("cmp not founded")
  return
end

-- @lspkind
local lspkind_ok, lspkind = pcall(require, "lspkind")

if not lspkind_ok then
  vim.notify("lspkind not founded")
  return
end

local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end

local symbol_map = {
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
  Keyword = "",
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

local mapping = {
  -- ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
  -- ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
  ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
  ["<CR>"] = cmp.mapping.confirm({ select = false }),
  ["<C-c>"] = cmp.mapping.close(),
  ["<C-y>"] = cmp.mapping.complete(),
  ["<C-n>"] = function()
    if not cmp.visible() then
      cmp.complete()
    else
      cmp.select_next_item()
    end
  end,
  ["<C-p>"] = function()
    if not cmp.visible() then
      cmp.complete()
    else
      cmp.select_prev_item()
    end
  end,
  ["<tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    else
      fallback()
    end
  end, {
    "i",
    "s",
  }),
}

local sources = {
  { name = "nvim_lsp" },
  { name = "ultisnips" },
  {
    name = "buffer",
    keyword_length = 4,
  },
  { name = "nvim-lua" },
  { name = "path" },
  { name = "neorg" },
  { name = "emoji" },
}

local menu = {
  nvim_lsp = "LSP)",
  buffer = "Buffer",
  ultisnips = "Snippet",
  nvim_lua = "Lua",
  path = "Path",
  emoji = "Emoji",
}

cmp.setup({
  enabled = function()
    -- disable completion in comments
    local context = require("cmp.config.context")
    -- keep command mode completion enabled when cursor is in a comment
    if vim.api.nvim_get_mode().mode == "c" then
      return true
    else
      return not context.in_treesitter_capture("comment") and not context.in_syntax_group("Comment")
    end
  end,
  -- config default window
  window = {
    -- completion = cmp.config.window.bordered(),
    completion = {
      border = border("CmpBorder"),
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
    },
    -- documentation = cmp.config.window.bordered(),
    documentation = {
      border = border("CmpBorder"),
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
    },
  },

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
  mapping = mapping,

  -- menu
  formatting = {
    fields = {
      "kind",
      "abbr",
      "menu",
    },
    format = lspkind.cmp_format({
      -- https://code.visualstudio.com/api/references/icons-in-labels
      symbol_map = symbol_map,
      mode = "symbol",
      --mode = "symbol_text",
      maxwidth = 50,
      menu = menu,
    }),
  },

  completion = {
    autocomplete = false,
  },
  experimental = {
    --ghost_text = {hl_group = 'GH'}
    ghost_text = true,
  },

  -- sources
  sources = sources,
})

vim.cmd([[
" NOTE: this ctrl e shortkeys is conflict nvim-cmp's mapping, so can't in the
" note: can't put this after, tab will replace c-e
" same files
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsSnippetDirectories = [
      \ stdpath('config') . '/Ultisnips/',
      \ ]
let g:UltiSnipsEditSplit="vertical"

nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>G
nnoremap <silent> <SPACE>ea :UltiSnipsEdit all<CR>
]])
