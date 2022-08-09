vim.g.tex_flavor = "latex"
-- this zathura need zathura plugin to support pdf
-- but it can' refresh with no toggle compile
-- zathura support preview refresh , but slow
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_view_general_viewer = "okular"
vim.g.vimtex_quickfix_mode = true
vim.g.tex_conceal = "abdmg"
vim.g.vimtex_compiler_latexmk_engines = {
  ["_"] = "-xelatex",
}

-- preview plugin
-- vim.g.livepreview_cursorhold_recompile = false

-- help docs
-- zathura link default keys
-- ref: https://defkey.com/zathura-shortcuts
-- article: https://castel.dev/post/lecture-notes-1/

-- cn
-- https://wiki.archlinux.org/title/TeX_Live_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#%E7%BA%B8%E5%BC%A0%E5%A4%A7%E5%B0%8F
