<h1 align="center">NEOVIM</h1>

<div align="center">
  <span> • </span>
	<a href="https://oeyoews.github.io/nvim">Home</a>
  <span> • </span>
</div>

<div align="center">

<img src="https://img.shields.io/badge/Maintain-Yes-blueviolet.svg?style=flat-square&logo=Chakra-Ui&color=90E59A&logoColor=green" alt="status" >
<img src="https://img.shields.io/badge/System-Linux-white.svg?style=flat-square&logo=linux&logoColor=white&color=BB9AF7" alt="system">
<img src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-Semantic-e10079.svg?style=flat-square" alt="Semantic Release"/>
<img src="https://img.shields.io/badge/License-GPL--3.0-green.svg?style=flat-square&logo=GNU&color=df967f&label=License" alt="license">
<img src="https://img.shields.io/badge/Neovim-0.7.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=green" alt="neovim">
<img src="https://img.shields.io/badge/Github-Yes-green.svg?style=flat-square&logo=github&label=Github&logoColor=cyan" alt="github">
<img src="https://img.shields.io/badge/Gitlab-Yes-ffcc00.svg?style=flat-square&logo=gitlab&label=Gitlab" alt="gitlab">
<img src="https://img.shields.io/gitlab/v/tag/oeyoews/nvim?color=green&logo=FastAPI&style=flat-square" alt="tag">
<img src="https://img.shields.io/badge/GIT-Yes-green.svg?style=flat-square&logo=git&label=GIT" alt="git">
<img src="https://img.shields.io/badge/Shell-zsh-white.svg?style=flat-square&logo=Gnu-Bash&logoColor=9ECE6A&color=BB9AF7" alt="shell">
<img src="https://img.shields.io/badge/Lang-lua-blueviolet.svg?style=flat-square&logo=lua&color=90E59A&logoColor=blue" alt="lang">

<hr>

<img src="img/2022-06-17-01-20-01.png" width=512/>

</div>


## Introd

<details>
<summary>INFO</summary>

```
 ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
 ┃   ┏━━━━━━━━┓                         ┏━━━━━━━━┓   ┃
 ┃   ┃ NEOVIM ┃────────────────────────►┃ 0.7.0+ ┃   ┃
 ┃   ┗━━━━━━━━┛                         ┗━━━━┯━━━┛   ┃
 ┃                                           │       ┃
 ┃                                           │       ┃
 ┃   ┏━━━━━━━━━━━━━━━━━━┓                    │       ┃
 ┃   ┃ ├── CHANGELOG.md ┃                    │       ┃
 ┃   ┃ ├── _config.yml  ┃                    │       ┃
 ┃   ┃ ├── img          ┃                    │       ┃
 ┃   ┃ ├── init.lua     ┃                    │       ┃
 ┃   ┃ ├── install.sh   ┃                    │       ┃
 ┃   ┃ ├── lua          ┃                    │       ┃
 ┃   ┃ ├── Makefile     ┃◄───────────────────┘       ┃
 ┃   ┃ ├── package.json ┃                            ┃
 ┃   ┃ ├── plugin       ┃                            ┃
 ┃   ┃ ├── README.md    ┃                            ┃
 ┃   ┃ ├── Ultisnips    ┃                            ┃
 ┃   ┃ └── yarn.lock    ┃                            ┃
 ┃   ┗━━━━━━━━━━━━━━━━━━┛                            ┃
 ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
```

</details>

## Dependencies

<details>
<summary>INFO</summary>

* python-pynvim
* python
* kitty
* noto-font-emoji
* nodejs
* fzf
* ranger
* shellcheck

</details>

## Install

* Just execute `nvim`

## TODO

<details>
<summary>INFO</summary>

* [ ] cursor shake for null-ls
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
