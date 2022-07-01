-- can't control this order use pcall, so must intergrate it to modules.lua
local tbl = {
  "core.utils",
  "modules",
}

for _, v in ipairs(tbl) do
  local ok, _ = pcall(require, v)
  if not ok then
    vim.notify(v .. " not founded")
  end
end
