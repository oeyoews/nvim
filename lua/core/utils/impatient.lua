pcall(require, "impatient")

local filetype_ok, filetype = pcall(require, "filetype")

if filetype_ok then
  filetype.setup({
    overrides = {
      complex = {
        [".service"] = "systemd",
        [".info"] = "json",
      },
    },
  })
end
