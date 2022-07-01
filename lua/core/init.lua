-- can't control this order use pcall, so must intergrate it to modules.lua
local tbl = {
  "core.utils",
  "modules",
}

for _, v in ipairs(tbl) do
  require(v)
end
