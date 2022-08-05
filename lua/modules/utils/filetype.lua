local filetype_ok, filetype = pcall(require, "filetype")

if filetype_ok then
  filetype.setup({
    overrides = {
      literal = {
        [".gitignore"] = "gitignore",
        ["tiddlywiki.info"] = "json",
      },
      extensions = {
        service = "systemd",
      },
    },
  })
end
