local ok, filetype = pcall(require, "filetype")

if not ok then
  return
end

filetype.setup({
  overrides = {
    complex = {
      [".service"] = "systemd",
      [".sh"] = "bash",
    },
  },
})
