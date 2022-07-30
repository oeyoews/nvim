--vim.cmd [[highlight default GH guifg=#3bb6c4 guibg=NONE]]
local g = vim.g

g.UltiSnipsEditSplit = "vertical"
g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
-- can't use two mappings
-- g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

-- @nvim_cmp
local _, cmp = pcall(require, "cmp")
-- -- @lspkind
local _, lspkind = pcall(require, "lspkind")

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
  Constructor = "𝑪",
  Field = "𝙁",
  Variable = "",
  Class = "𝓒",
  Interface = "", -- 
  Module = "",
  Property = "ﰠ",
  Unit = "𝑼",
  Value = "勺",
  Enum = "",
  Keyword = "",
  Snippet = "𝒮", -- ﬆ  
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
  ["<C-b>"] = cmp.mapping.scroll_docs(-4),
  ["<C-f>"] = cmp.mapping.scroll_docs(4),
  -- ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
  -- ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
  ["<S-Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    else
      fallback()
    end
  end, { "i", "s" }),
  ["<C-y>"] = cmp.mapping.complete(),
  ["<C-Space>"] = cmp.mapping.complete(),
  ["<CR>"] = cmp.mapping.confirm({ select = false }),
  ["<C-c>"] = cmp.mapping.close(),
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
  ["<tab>"] = cmp.mapping({
    i = function(fallback)
      if cmp.visible() then
        cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
      elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
        vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), "m", true)
      else
        fallback()
      end
    end,
    s = function(fallback)
      if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
        vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), "m", true)
      else
        fallback()
      end
    end,
  }),
  -- ["<tab>"] = cmp.mapping(function(fallback)
  --   if require('neogen').jumpable() then
  --     require('neogen').jump_next()
  --   elseif cmp.visible() then
  --     cmp.select_next_item()
  --   else
  --     fallback()
  --   end
  -- end, {
  --   "i",
  --   "s",
  -- }),
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
}

local menu = {
  nvim_lsp = " ",
  buffer = " ﬘",
  ultisnips = "Snippet",
  nvim_lua = "Lua",
  path = "Path",
  emoji = "Emoji",
}

cmp.setup({
  -- config default window
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
    completion = {
      border = border("CmpBorder"),
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
    },
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

  -- @bug true is nothing, must to comment
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
" note: can't put this after, tab will replace c-e " same files
" use 0 to setup this mappings

let g:UltiSnipsExpandTrigger="<C-e>"
" let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
" don't use snippets this special directory
let g:UltiSnipsSnippetDirectories = [
      \ stdpath('config') . '/ultisnips/',
      \ ]

autocmd FileType TelescopePrompt | lua require("cmp").setup.buffer({ enabled = false })
]])

vim.keymap.set("n", "<space>ee", "<cmd>UltiSnipsEdit<cr>", {
  desc = "ﱴ edit snippet",
})

vim.keymap.set("n", "<space>ea", "<cmd>UltiSnipsEdit all<cr>", { desc = " edia all snippet geterally" })
