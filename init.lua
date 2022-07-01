local tbl = {
  "core",
  "core.utils",
  "modules",
}

for _, v in ipairs(tbl) do
  require(v)
end
