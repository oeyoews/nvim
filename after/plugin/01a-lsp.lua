-- note this order
vim.cmd [[set completeopt=menu,menuone,noselect,noinsert]]

vim.cmd [[highlight default Fs guifg=#3bb6c4 guibg=NONE]]

local border = { {"╭", "Fs"}, {"─", "Fs"}, {"╮", "Fs"}, {"│", "Fs"},
      {"╯", "Fs"}, {"─", "Fs"}, {"╰", "Fs"}, {"│", "Fs"}, }

-- cmp_lsp
local cmp = require'cmp'

--- cmp-look
--cmp.register_source('look', require('cmp_look').new())

cmp.setup({
snippet = {
  expand = function(args)
  vim.fn["UltiSnips#Anon"](args.body)
end, },

-- mappings
mapping = {
  ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
  ['<CR>'] = cmp.mapping.confirm(),
  ['<C-e>'] = cmp.mapping.complete(),
  ['<C-c>'] = cmp.mapping.close(), },

  formatting = {
    format = require("lspkind").cmp_format({with_text = true, menu = ({
    nvim_lsp = "",
    buffer = "",
    ultisnips = "",
    nvim_lua = "",
    --neorg = "",
    })}), },

 documentation = { border = border, },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer', keyword_length = 2 },
    { name = 'ultisnips' },
    { name = 'path' },
    { name = 'nvim-lua' },
    { name = 'neorg' },
    --{ name = 'spell' },
    { name = 'emoji', insert = true },
    --{ name = 'look' },
    --{ name = 'orgmode' },
    --{ name = 'cmdline' },
    { name = "dictionary", keyword_length = 2 }, },

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  --cmp.setup.cmdline('/', {
    --sources = {
      --{ name = 'buffer' }
    --}
  --}),

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  --cmp.setup.cmdline(':', {
    --sources = cmp.config.sources({
      --{ name = 'path' }
    --}, {
      --{ name = 'cmdline' }
    --})
  --})

  })

  --[[
  -- TODO
  local function lspSymbol(name, icon)
     vim.fn.sign_define("LspDiagnosticsSign"..name, { text = icon, numhl = "LspDiagnosticsDefault"..name })
  end

  --lspSymbol("Error", "")
  lspSymbol("Error", "E")
  --lspSymbol("Information", "")
  lspSymbol("Information", "I")
  --lspSymbol("Hint", "")
  lspSymbol("Hint", "H")
  --lspSymbol("Warning", "")
  lspSymbol("Warning", "W")
  --]]


  --jsonls: npm i -g vscode-langservers-extracted
  -- gopls need go.mod for folder
  local nvim_lsp = require('lspconfig')
  -- automatically connect language server protocol
  local servers = { 'vimls',
  --'clangd', 'bashls', 'pyright', 'gopls',
  --'jdtls',
  --'jsonls',
  --'tsserver',
                    'html', 'cssls', }
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
      spacing = 4,
      prefix = ' '
    }
  }
  )


--  == go-to definition split  ==
local function goto_definition(split_cmd)
  local util = vim.lsp.util
  local log = require("vim.lsp.log")
  local api = vim.api

  local handler = function(_, result, ctx)
    if result == nil or vim.tbl_isempty(result) then
      local _ = log.info() and log.info(ctx.method, "No location found")
      return nil
    end

    if split_cmd then
      vim.cmd(split_cmd)
    end

    if vim.tbl_islist(result) then
      util.jump_to_location(result[1])

      if #result > 1 then
        -- TODO
        util.set_qflist(util.locations_to_items(result))
        api.nvim_command("copen")
        api.nvim_command("wincmd p")
      end
    else
      util.jump_to_location(result)
    end
  end

  return handler
end

vim.lsp.handlers["textDocument/definition"] = goto_definition('split')

