local ok, filetype = pcall(require, "filetype")

if not ok then
  vim.notify("not founded filtype.lua")
end

filetype.setup({
  overrides = {
    complex = {
      [".service"] = "systemd",
    },
  },
})
