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
  "clang-format",
  "fixjson",
  "codespell", -- spell
  "shellcheck",
  -- "proselint",
  -- "black", -- ptyhon format
}

for _, value in ipairs(tbl) do
  check_mason(value)
end

require("mason-tool-installer").setup({
  ensure_installed = oeyoews.mason,
})
