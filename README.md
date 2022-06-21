[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![pipeline status](https://gitlab.com/oeyoews/nvim/badges/nvim/pipeline.svg)](https://gitlab.com/oeyoews/nvim/-/commits/nvim)
[![Latest Release](https://gitlab.com/oeyoews/nvim/-/badges/release.svg)](https://gitlab.com/oeyoews/nvim/-/releases)

<img src="img/2022-06-17-01-20-01.png" width=512/>

# Introd

```tree
├── CHANGELOG.md
├── _config.yml
├── img
├── init.lua
├── install.sh
├── lua
├── Makefile
├── package.json
├── plugin
├── README.md
├── Ultisnips
└── yarn.lock
```

`nvim-version` 0.7
## Dependencies

<details>
<summary>INFO</summary>

* fzf
* python-pynvim(neovim)
* python(ultisnips)
* npm(for lsp-installer)
* shellcheck, codespell
* make(for install)
* ranger(file manager)
* need install noto-font-emoji or nerd font

</details>

## Install

`nvim`

## TODO

<details>
<summary>INFO</summary>

* [x] vim-plug or packer.nvim index probleb
* [x] config setting conflict
* [ ] integrate husky and (prettier)
* [x] highlight paraness
* [ ] learn lightspeed
* [x] learn use visual-line multi curline
* [?] json add double how effect config
* [ ] add format stylua by ci/cd
* [x] insert mode to hide cursorline
* [x] automatically install filetype server when first open
* [ ] bug: treesitter multi download
* [x] config opt(load)
* [x] learn packer, test packer automatically
* [x] format lua(include vim), this treesitter
* [x] learn lua: doom-nvim, nvchad to deeply look
* [x] add highlight symbols under cursor functions(terminal gnome support)
* [x] use packer.nvim to replace vim-plug
* [x] tidy vanilla.txt, maybe can write vanilla.markdown, last to txt
* [x] config tab space show in different filetype
* [x] move plugins/*.lua to lua folder, and to pure lua config
* [ ] add window number switch number(mousenum)
* [x] solve gitsign utf8
* [x] how to add templates in nvim
* [x] config norg table
* [x] config format
* [x] some sitution will cause error line repeat(maybe emoji or refresh time error)
  * [x] snowflake:  this emoji will cause this bug in kitty(only)

* [x] config new theme for material, like tilde,
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
