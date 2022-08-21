-- TODO: add norg ft icons
require("nvim-web-devicons").setup({
  override = {
    norg = {
      icon = "", -- 
      color = "#5AB680",
      cterm_color = "67",
      name = "Norg",
    },
    zsh = {
      icon = "",
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
      icon = "",
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
      icon = "", -- 
      color = "#5AB680",
      cterm_color = "57",
      name = "Tid",
    },
    tex = {
      icon = "𝚃", -- 𝚃 this ﲀ icon cause number mass
      color = "#5AB680",
      cterm_color = "57",
      name = "Tex",
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
