---[[
local core_modules = {
  "core.ui",
  "core.lsp",
  "core.misc"
}

for _, module in ipairs(core_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error("Error loading(come from pcall)" .. module .. "\n\n" .. err)
  end
end
--]]
