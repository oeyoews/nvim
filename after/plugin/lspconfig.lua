-- note this order
vim.cmd [[set completeopt=menu,menuone,noselect,noinsert]]

-- ui
vim.cmd [[highlight default Fs guifg=#3bb6c4 guibg=NONE]]
local border = {
      {"╭", "Fs"},
      {"─", "Fs"},
      {"╮", "Fs"},
      {"│", "Fs"},
      {"╯", "Fs"},
      {"─", "Fs"},
      {"╰", "Fs"},
      {"│", "Fs"},
}
-- cmp_lsp
local cmp = require'cmp'
cmp.setup({
snippet = {
  expand = function(args)
  vim.fn["UltiSnips#Anon"](args.body)
end,
},

-- mappings
mapping = {
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
  --['<CR>'] = cmp.mapping.confirm({ select = true, }),
  ['<CR>'] = cmp.mapping.confirm(),
  ['<C-e>'] = cmp.mapping.complete(),
  --['<C-c>'] = cmp.mapping.close(),
  },

  formatting = {
    format = require("lspkind").cmp_format({with_text = true, menu = ({
    nvim_lsp = "ﲳ",
    ultisnips = "",
    nvim_lua = "",
    buffer = "",
    })}),
  },

 documentation = {
   border = border,
    },

  sources = {
    { name = 'ultisnips' },
    { name = 'nvim-lua' },
    { name = 'nvim_lsp' },
    { name = 'buffer', keyword_length = 2 },
    { name = 'path' },
    { name = 'emoji' },
    }
  })

  local function lspSymbol(name, icon)
     vim.fn.sign_define("LspDiagnosticsSign"..name, { text = icon, numhl = "LspDiagnosticsDefault"..name })
  end

  lspSymbol("Error", "")
  lspSymbol("Information", "")
  lspSymbol("Hint", "")
  lspSymbol("Warning", "")

  --jsonls: npm i -g vscode-langservers-extracted
  local nvim_lsp = require('lspconfig')
  -- automatically connect language server protocol
  local servers = { 'vimls', 'clangd', 'bashls', 'pyright', 'jsonls', 'tsserver'}
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  for _, lsp in ipairs(servers) do
      nvim_lsp[lsp].setup {
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
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)

--" === ultisnips ===
vim.cmd [[
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"
let g:UltiSnipsSnippetDirectories = [
			\ $HOME.'/.config/nvim/Ultisnips/',
      \ ]
let g:UltiSnipsEditSplit="vertical"

" == mappings ==
nnoremap <silent> <SPACE>ee :UltiSnipsEdit<CR>G
nnoremap <silent> <SPACE>ea :UltiSnipsEdit all<CR>

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
]]

--  == go-to definition  ==
local function goto_definition(split_cmd)
  local util = vim.lsp.util
  local log = require("vim.lsp.log")
  local api = vim.api

  -- note, this handler style is for neovim 0.5.1/0.6, if on 0.5, call with function(_, method, result)
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
