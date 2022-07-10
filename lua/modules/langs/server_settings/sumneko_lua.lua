local on_attach = function(client, bufnr)
  require("user.lsp_format").on_attach(client)
end

return {
  on_attach = on_attach,
  -- capabilities = capabilities,
  -- cmd = { "lua-language-server", sumneko_lua_locale },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          -- [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  }
}
