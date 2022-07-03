-- can't control this order use pcall, so must intergrate it to modules.lua
local tbl = {
  "core.utils",
  "user.modules",
}

for _, v in ipairs(tbl) do
  local ok, errorMes = pcall(require, v)
  if not ok then
    vim.notify(v .. " not founded")
    print(errorMes)
  end
end
