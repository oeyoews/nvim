require("nvim-web-devicons").setup({
  override = {
    zsh = {
      icon = " ",
      color = "yellow",
      cterm_color = "67",
      name = "Zsh",
    },
    ["rb"] = {
      icon = "",
      color = "#701516",
      cterm_color = "52",
      name = "Rb",
    },
    sh = {
      icon = " ",
      color = "yellow",
      cterm_color = "67",
      name = "Sh",
    },
    md = {
      icon = "",
      color = "#519aba",
      cterm_color = "67",
      name = "Md",
    },
    tid = {
      icon = "",
      color = "yellow",
      cterm_color = "67",
      name = "Tid",
    },
    default_icon = {
      icon = "",
      color = "#519aba",
      cterm_color = "66",
      name = "Default",
    },
  },
  default = true,
})
