local lspkind = require("lspkind")

-- bug: this markdown_inline.snippets bug like ```bash ``` or `xxx` ???
-- vim.cmd([[highlight default GH guifg=#3bb6c4 guibg=NONE]])
-- TODO: learn use highlight group and cutsom_ui file
-- https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance
vim.cmd([[
" highlight CmpItemKindDefault  guifg=#3bb6c4 guibg=NONE
" highlight CmpItemMenu guifg=#9E79BE guibg=NONE
highlight CmpItemKindSnippet  guifg=#3bb6c4 guibg=NONE
]])

-- can't use two mappings
-- g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
vim.g.UltiSnipsEditSplit = "vertical"
vim.g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
vim.g.snips_author = oeyoews.username

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

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
  Snippet = "❒",
  -- Text = "",
  -- Method = "𝙢 ",
  -- Function = "",
  -- Constructor = "𝑪",
  -- Field = "",
  -- Variable = "",
  -- Class = "𝓒",
  -- Interface = "",
  -- Module = "",
  -- Property = "ﰠ",
  -- Unit = "",
  -- Value = "𝞮",
  -- Enum = "",
  -- Keyword = "",
  -- Color = "",
  -- Reference = "",
  -- File = "",
  -- Folder = "",
  -- EnumMember = "",
  -- Constant = "",
  -- Struct = "𝓢",
  -- Event = "",
  -- Operator = "",
  -- TypeParameter = "𝙏",
}

local mapping = {
  -- ["<C-b>"] = cmp.mapping.scroll_docs(-4),
  -- ["<C-f>"] = cmp.mapping.scroll_docs(4),
  -- -- less use
  -- ["<S-Tab>"] = cmp.mapping(function(fallback)
  --   if cmp.visible() then
  --     cmp.select_prev_item()
  --   else
  --     fallback()
  --   end
  -- end, { "i", "s" }),
  -- ["<C-y>"] = cmp.mapping.complete(),
  -- ["<C-Space>"] = cmp.mapping.complete(),
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
  -- { name = "copilot" },
  {
    name = "nvim_lsp",
  },
  {
    name = "ultisnips",
  },
  {
    name = "buffer",
    keyword_length = 3,
  },
  {
    name = "nvim-lua",
  },
  {
    name = "path",
  },
  {
    name = "neorg",
  },
}

local menu = {
  nvim_lsp = "(Lsp)",
  buffer = "(Buffer)",
  ultisnips = "(Snippet)",
  nvim_lua = "(Lua)",
  path = "(Path)",
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
      "abbr", -- menu
      "kind", -- icon
      "menu", -- text
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

-- tabnine
-- this setup have some bug
-- require("cmp_tabnine.config")

-- TODO: this default value is ultisnips, how to use apprend link this
-- vim.fn.stdpath("data") .. "/site/pack/packer/start/vim-snippets/UltiSnips/",
vim.g.UltiSnipsSnippetDirectories = {
  "UltiSnips",
  vim.fn.stdpath("config") .. "/UltiSnips/",
}

-- default is enable
vim.g.UltiSnipsEnableSnipMate = 1

oeyoews.autocmd("FileType", {
  pattern = "TelescopePrompt",
  callback = function()
    require("cmp").setup.buffer({
      enabled = false,
    })
  end,
})

require("cmp_nvim_ultisnips").setup({
  filetype_source = "treesitter",
  -- show_snippets = "all",
  -- documentation = function(snippet)
  --   return snippet.description
  -- end,
})

-- vim.g.UltiSnipsJumpForwardTrigger = "<C-J>"
vim.g.UltiSnipsExpandTrigger = "<C-e>"
vim.g.UltiSnipsJumpBackwardTrigger = "<C-K>"

vim.keymap.set("n", "<space>ee", "<cmd>UltiSnipsEdit<cr>", {
  desc = " edit snippet",
})

vim.keymap.set("n", "<space>ea", "<cmd>UltiSnipsEdit all<cr>", {
  desc = " edia all snippet geterally",
})
