-- install some need binaries
require("modules.langs.mason_tools_install")

local null_ls = require("null-ls")
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
-- local code_actions = null_ls.builtins.code_actions

local sources = {
  --[=[ code_actions.gitsigns.with({
    disabled_filetypes = {
      "gitcommit",
    },
  }),
  --]=]
  formatting.prettier.with({
    disabled_filetypes = {
      "markdown",
    },
  }),
  -- formatting.xmlformat,
  formatting.stylua.with({
    extra_args = { "--config-path", vim.fn.expand("~/.config/nvim/linter-config/stylua.toml") },
  }),
  --[=[
  formatting.prettierd.with({
    env = {
      PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/linter-config/prettier.config.js"),
    },
  }),
  --]=]
  --[=[ diagnostics.eslint_d.with({
    -- ignore prettier warnings from eslint-plugin-prettier
    filter = function(diagnostic)
      return diagnostic.code ~= "prettier/prettier"
    end,
  }), --]=]
  -- formatting.latexindent,
  --   .with({
  --   -- extra_args = { "-c", "/tmp/" }, -- https://latexindentpl.readthedocs.io/en/latest/sec-how-to-use.html#from-the-command-line
  -- }), -- need install texlive-latexindent-meta
  formatting.fixjson, -- not worked
  -- formatting.clang_format,
  -- formatting.markdown_toc, -- format frontmatter also
  --[=[ diagnostics.codespell.with({
    filetypes = {
      "markdown",
    },
  }), --]=]
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

null_ls.setup({
  -- virtual_text = false, -- no this option?
  update_in_insert = false,
  debounce = 500,
  sources = sources,
  -- on_init = function(new_client, _)
  --   new_client.offset_encoding = "utf-8"
  -- end,
  on_attach = function(client, bufnr)
    if oeyoews.nvim_version > 7 and client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      oeyoews.autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          if oeyoews.nvim_version > 7 then
            lsp_formatting(bufnr)
          else
            vim.lsp.buf.formatting_sync()
          end
        end,
      })
    end
  end,
})

vim.keymap.set("n", "<space>ln", "<cmd>NullLsInfo<cr>", {
  silent = true,
  desc = " show null-ls info",
})

-- @ref: https://github.com/jose-elias-alvarez/null-ls.nvim/issues/428
-- local notify = vim.notify
-- vim.notify = function(msg, ...)
--   if msg:match("warning: multiple different client offset_encodings") then
--     return
--   end
--
--   notify(msg, ...)
-- end
