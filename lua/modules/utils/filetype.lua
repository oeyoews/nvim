local filetype_ok, filetype = pcall(require, "filetype")

if filetype_ok then
  filetype.setup({
    overrides = {
      extensions = {
        service = "systemd",
        info = "json",
      },
    },
  })
end
