---[[
local core_modules = {
  "core.misc.treesitter",
  "core.misc.plugins",
  "core.misc.telescope",
  "core.misc.which-key",
}

for _, module in ipairs(core_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error("Error loading" .. module .. "\n\n" .. err)
  end
end
--]]
