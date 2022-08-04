local lspkind = require("lspkind")

--vim.cmd [[highlight default GH guifg=#3bb6c4 guibg=NONE]]

vim.g.UltiSnipsEditSplit = "vertical"
vim.g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
-- can't use two mappings
-- g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

-- @nvim_cmp
local _, cmp = pcall(require, "cmp")

local function border(highlight)
  return {
    { "┏", highlight },
    { "─", highlight },
    { "┓", highlight },
    { "│", highlight },
    { "┛", highlight },
    { "─", highlight },
    { "┗", highlight },
    { "│", highlight },
    -- { "╭", hl_name },
    -- { "─", hl_name },
    -- { "╮", hl_name },
    -- { "│", hl_name },
    -- { "╯", hl_name },
    -- { "─", hl_name },
    -- { "╰", hl_name },
    -- { "│", hl_name },
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
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "𝑼",
  Value = "勺",
  Enum = "",
  Keyword = "",
  Snippet = " ",
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
}

local sources = {
  { name = "nvim_lsp" },
  { name = "ultisnips" },
  {
    name = "buffer",
    keyword_length = 3,
  },
  { name = "nvim-lua" },
  { name = "path" },
  { name = "neorg" },
}

local menu = {
  nvim_lsp = " ",
  buffer = " ﬘",
  ultisnips = "Snippet",
  nvim_lua = " ",
  path = "Path",
}

cmp.setup({
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
  -- TODO: custom this prompt color
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
    -- how to use keymap to toggle this
    -- autocomplete = false,
  },
  experimental = {
    --ghost_text = {hl_group = 'GH'}
    ghost_text = true,
  },

  -- sources
  sources = sources,
})

vim.g.UltiSnipsSnippetDirectories = {
  vim.fn.stdpath("config") .. "/ultisnips/",
}

oeyoews.autocmd("FileType", {
  pattern = "TelescopePrompt",
  callback = function()
    require("cmp").setup.buffer({
      enabled = false,
    })
  end,
})

vim.g.UltiSnipsExpandTrigger = "<C-e>"
vim.g.UltiSnipsJumpBackwardTrigger = "<C-K>"

vim.keymap.set("n", "<space>ee", "<cmd>UltiSnipsEdit<cr>", {
  desc = "ﱴ edit snippet",
})

vim.keymap.set("n", "<space>ea", "<cmd>UltiSnipsEdit all<cr>", {
  desc = " edia all snippet geterally",
})
