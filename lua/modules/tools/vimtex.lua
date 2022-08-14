vim.g.tex_flavor = "latex" -- fix plaintex to tex
vim.g.vimtex_view_general_viewer = "okular" -- this app can remember last position(killed cannot work)
vim.g.vimtex_view_method = "zathura" -- this zoom have some bug NOTE:zathura not support wayland perfectly this zathura need zathura plugin to support pdf
vim.g.vimtex_quickfix_mode = false
vim.g.tex_conceal = "abdmg"
vim.g.vimtex_compiler_latexmk_engines = {
  ["_"] = "-xelatex",
}
vim.g.vimtex_compiler_latexmk = {
  build_dir = "public",
}
vim.g.vimtex_compiler_latexmk = {
  options = {
    "-xelatex",
    "-verbose",
    "-file-line-error",
    "-synctex=1",
    "-interaction=nonstopmode",
  },
}
vim.g.vimtex_toc_config = {
  name = "TOC",
  show_help = false,
  show_numbers = false,
  split_width = 25,
}

-- help docs
-- zathura link default keys
-- ref: https://defkey.com/zathura-shortcuts
-- article: https://castel.dev/post/lecture-notes-1/

-- cn
-- https://wiki.archlinux.org/title/TeX_Live_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#%E7%BA%B8%E5%BC%A0%E5%A4%A7%E5%B0%8F
vim.g.vimtex_syntax_enabled = true
vim.g.vimtex_syntax_conceal_disable = false
vim.g.vimtex_quickfix_open_on_warning = false
vim.g.vimtex_compiler_progname = "nvr" -- NOTE:pip install `neovim-remote`
