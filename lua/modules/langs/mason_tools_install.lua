--- check bin
--- @param bin string
local check_mason = function(bin)
  if vim.fn.executable(bin) == 0 then
    oeyoews.mason[#oeyoews.mason + 1] = bin
  end
end

local tbl = {
  "stylua", -- lua
  "prettier",
  -- "marksman",
  -- "xmlformatter",
  -- "clang-format",
  -- "fixjson",
  -- "codespell", -- spell
  -- "shellcheck",
  -- "latexindent",
  -- "vue-language-server", -- mapping lsp is volar
  -- "proselint",
  -- "black", -- ptyhon format
}

for _, value in ipairs(tbl) do
  check_mason(value)
end

-- :lua print(vim.inspect(oeyoews.mason))
-- not work??
require("mason-tool-installer").setup({
  ensure_installed = oeyoews.mason,
})
