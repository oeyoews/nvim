---[[
local core_modules = {
  "core.misc.treesitter",
  "core.misc.other",
  "core.misc.telescope",
  "core.misc.which-key",
  "core.misc.autocmds",
}

for _, module in ipairs(core_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error("Error loading" .. module .. "\n\n" .. err)
  end
end
--]]
