-- note this order
vim.cmd [[set completeopt=menu,menuone,noselect,noinsert]]

-- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
local nvim_lsp = require('lspconfig')

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
  ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
  ['<CR>'] = cmp.mapping.confirm({ select = true, }),
  ['<C-e>'] = cmp.mapping.complete(),
  ['<C-c>'] = cmp.mapping.close(),
  },

formatting = {
  format = require("lspkind").cmp_format({with_text = true, menu = ({
  ultisnips = "[Ult]",
  nvim_lsp = "[Lsp]",
  buffer = "[Buf]",
  })}),
},

sources = {
  { name = 'ultisnips' },
  { name = 'nvim_lsp' },
  { name = 'buffer' },
  { name = 'emoji' },
  { name = 'path' },
  { name = 'nvim-lua' },
  }
})

local function lspSymbol(name, icon)
   vim.fn.sign_define("LspDiagnosticsSign" .. name, { text = icon, numhl = "LspDiagnosticsDefault" .. name })
end
-- 
lspSymbol("Error", "✖")
lspSymbol("Information", "")
lspSymbol("Hint", "")
lspSymbol("Warning", "")

  -- automatically connect language server protocol
  local servers = { 'vimls', 'clangd', 'bashls', 'pyright'}

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

  -- in current line show diagnostic info
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = false,  -- reduce some Error tips
    signs = true,
    underline = true,
    virtual_text = true
    })


-- icon note this order in last
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
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
