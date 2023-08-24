local check_mason = function(bin)
  if vim.fn.executable(bin) == 0 then
    oeyoews.mason[#oeyoews.mason + 1] = bin
  end
end

local tbl = {
  'stylua', -- lua
  'prettier',
}

for _, value in ipairs(tbl) do
  check_mason(value)
end

-- :lua print(vim.inspect(oeyoews.mason))
require('mason-tool-installer').setup({
  ensure_installed = oeyoews.mason,
})
