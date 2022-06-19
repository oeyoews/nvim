[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![pipeline status](https://gitlab.com/oeyoews/nvim/badges/nvim/pipeline.svg)](https://gitlab.com/oeyoews/nvim/-/commits/nvim)
[![Latest Release](https://gitlab.com/oeyoews/nvim/-/badges/release.svg)](https://gitlab.com/oeyoews/nvim/-/releases)

![](img/2022-06-17-01-20-01.png)

# Introd

`nvim-version` nvim-0.7.0

## Dependencies

<details>
<!--<details open="open">-->
<summary>TOC</summary>

* python-pynvim(neovim)
* python3(ultisnips)
* npm(for lsp-installer)
* go(lsp server)
* shellcheck, codespell
* make(for install)
* ranger(file manager)
* need install noto-font-emoji or nerd font

</details>

## Install

```bash
make && make install
```

> tips: vim-plug: enter to show more information, R to reinstall failed plugins

---

<!-- 🥙 -->
## ✨ Feature

* `Ctrl L` in insert mode, press it, you can input uppercase letters, press it
again to toggle lowercase letters

## TODO

<details>
<summary>More</summary>


* [ ] vim-plug or packer.nvim index probleb
* [ ] config setting conflict
* [ ] integrate husky and (prettier)
* highlight paraness
* [ ] learn lightspeed
* [ ] learn use visual-line multi curline
* [?] json add double how effect config
* [ ] add format stylua by ci/cd
* [x] insert mode to hide cursorline
* [ ] automatically install filetype server when first open
* [ ] bug: treesitter multi download
* config opt(load)
* learn packer, test packer automatically
* [ ] format lua(include vim), this treesitter
* [ ] learn lua: doom-nvim, nvchad to deeply look
* [ ] add highlight symbols under cursor functions(terminal gnome support)
* [x] use packer.nvim to replace vim-plug
* [ ] tidy vanilla.txt, maybe can write vanilla.markdown, last to txt
* [ ] config tab space show in different filetype
* [ ] move plugins/*.lua to lua folder, and to pure lua config
* [ ] add window number switch number(mousenum)
* [x] solve gitsign utf8
* [ ] how to add templates in nvim
* [x] config norg table
* [x] config format
* [x] some sitution will cause error line repeat(maybe emoji or refresh time error)
  * :snowflake:  this emoji will cause this bug in kitty(only)

* [ ] config new theme for material, like tilde,
* add shortkeys in vim to open browser html
* [?] fix the zh bug(maybe also is terminal)
* [x] add random banner and random color startup
  * <https://github.com/goolord/alpha-nvim/discussions/16#discussioncomment-2386902>
* first install automatically install
* [x] config dashboard
* [x] this emjoi shadow bug, maybe is kitty terminal(switch to wezterm compare)
* [x] some error tip from feline(active)
* [x] https://github.com/AstroNvim/AstroNvim, learn it option setting and lsp multi separate setting: fix lua global vim setting

</details>

## NOTE

* not rename Ultisnips
* because this GFW, please multi try to install all plugins
