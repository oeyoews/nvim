<div align="center">
  <img src="img/vim.png" alt="vim" align="center" width=144><hr>
  <h2>🍃 Neovim</h2>
  <p> 💡 A personal neovim configuration</p>
	🏠 <a href="https://oeyoews.github.io/nvim">Home</a>&nbsp;
  🔗 <a href="">Links </a>&nbsp;
  ⬇️  <a  href="">Download</a>&nbsp;
  🔰 <a  href="">More</a>&nbsp;
  <hr>
</div>

<div align="center">
<!-- <img alt="Lines of code" src="https://img.shields.io/tokei/lines/github/oeyoews/nvim?color=cyan&logo=github&logoColor=violet&style=flat-square"> -->
<img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/oeyoews/nvim?color=cyan&logo=github&logoColor=cyan&style=flat-square">
<img alt="GitHub issues" src="https://img.shields.io/github/issues-raw/oeyoews/nvim?color=green&logo=github&logoColor=cyan&style=flat-square">
<!-- <img src="https://img.shields.io/badge/Desktop-Gnome-blueviolet.svg?style=flat-square&logo=gnome&color=90E59A&logoColor=cyan" alt="desktop"> -->
<img src="https://img.shields.io/badge/Sync-Yes-blueviolet.svg?style=flat-square&logo=gitlab&color=90E59A&logoColor=green" alt="sync">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/oeyoews/nvim?logo=github&logoColor=cyan&style=flat-square">
<!-- <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/oeyoews/nvim?label=Size&logo=git&style=flat-square"> -->
<img src="https://img.shields.io/badge/Terminal-kitty-blueviolet.svg?style=flat-square&logo=powershell&color=90E59A&logoColor=green" alt="terminal">
<img src="https://img.shields.io/github/directory-file-count/oeyoews/nvim?color=green&label=Files&logo=Gnu&logoColor=violet&style=flat-square" alt="files">
<img src="https://img.shields.io/badge/Maintain-Yes-blueviolet.svg?style=flat-square&logo=Chakra-Ui&color=90E59A&logoColor=green" alt="status" >
<img src="https://img.shields.io/badge/System-Linux-white.svg?style=flat-square&logo=linux&logoColor=cyan&color=BB9AF7" alt="system">
<img src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-Semantic-e10079.svg?style=flat-square" alt="Semantic Release"/>
<img src="https://img.shields.io/badge/License-AGPL--3.0-green.svg?style=flat-square&logo=GNU&color=df967f&label=License" alt="license">
<img src="https://img.shields.io/badge/Neovim-0.7.2-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=green" alt="neovim">
<img src="https://img.shields.io/badge/Github-Yes-green.svg?style=flat-square&logo=github&label=Github&logoColor=cyan" alt="github">
<img src="https://img.shields.io/badge/Gitlab-Yes-ffcc00.svg?style=flat-square&logo=gitlab&label=Gitlab" alt="gitlab">
<img src="https://img.shields.io/gitlab/v/tag/oeyoews/nvim?color=green&logo=FastAPI&style=flat-square" alt="tag">
<!-- <img src="https://img.shields.io/badge/GIT-Yes-green.svg?style=flat-square&logo=git&label=GIT" alt="git"> -->
<!-- <img src="https://img.shields.io/badge/Shell-zsh-white.svg?style=flat-square&logo=Gnu-Bash&logoColor=9ECE6A&color=BB9AF7" alt="shell"> -->
<img src="https://img.shields.io/badge/Lang-lua-blueviolet.svg?style=flat-square&logo=lua&color=90E59A&logoColor=blue" alt="lang">
</div>
<hr>

# Toc

<!-- vim-markdown-toc Marked -->

* [ShowCases](#showcases)
* [What's that](#what's-that)
* [Install](#install)
* [Features](#features)
* [TODO](#todo)
* [Links](#links)

<!-- vim-markdown-toc -->

## ShowCases

|    <img src="img/vim.png" align="bottom" width=128/>    | <img src="img/example01.png" align="bottom" width=256/> |
|:-------------------------------------------------------:|:-------------------------------------------------------:|
| <img src="img/example02.png" align="bottom" width=256/> |                           etc                           |

## What's that

💡 A personal neovim configuration

## Install

- install pynvim and clone this repository

```bash
git clone --depth 1 https://gitlab.com/oeyoews/nvim.git ~/.config/nvim  # please your ~/.config/nvim folder or your nvim configuration
```

## Features

* switch day-night nvim theme base time automatically
* module manage nvim config, use pure lua
* builtin plugins, like tokynight, notify and some telescope extensions .
* install lsp-servers base your current development automatically
* faster nvim startup, about (60~70) ms
* support markdown-preview and past image in neovim
* support ranger
* hide tilde and show time in statusline
* customize shortkeys
* support codespell
* hide cursorline in insert mode
* customize snippets with ultisnips
* backup plugin snapshot with packer
* etc

## TODO

<details>
<summary>🚀</summary>

- [ ] inlay hints
- [ ] learn vim.api(nvim), such use  vim.fn.executable to replace os.executable
- [ ] link null-ls make a logger file
- [ ] theme: https://github.com/nshen/learn-neovim-lua/blob/main/lua/utils/change-colorscheme.lua
- [ ] tiny all which-key mappings
- [ ] control module to install or uninstall plugins
- [ ] use packer make packersnapshot
- [ ] emulate key pressing
- [x] cursor shake for null-ls
- [x] vim-plug or packer.nvim index probleb
- [x] config setting conflict
- [x] integrate husky and (prettier)
- [x] highlight paraness
- [x] learn lightspeed
- [x] learn use visual-line multi curline
- [?] json add double how effect config
- [x] add format stylua by ci/cd
- [x] insert mode to hide cursorline
- [x] automatically install filetype server when first open
- [?] bug: treesitter multi download
- [x] config opt(load)
- [x] learn packer, test packer automatically
- [x] format lua(include vim), this treesitter
- [x] learn lua: doom-nvim, nvchad to deeply look
- [x] add highlight symbols under cursor functions(terminal gnome support)
- [x] use packer.nvim to replace vim-plug
- [x] tidy vanilla.txt, maybe can write vanilla.markdown, last to txt
- [x] config tab space show in different filetype
- [x] move plugins/\*.lua to lua folder, and to pure lua config
- [x] add window number switch number(mousenum)
- [x] solve gitsign utf8
- [x] how to add templates in nvim
- [x] config norg table
- [x] config format
- [x] some sitution will cause error line repeat(maybe emoji or refresh time error)
- [x] snowflake: this emoji will cause this bug in kitty(only)
- [x] config new theme for material, like tilde,
- [x] add shortkeys in vim to open browser html
- [?] fix the zh bug(maybe also is terminal)
- [x] add random banner and random color startup <https://github.com/goolord/alpha-nvim/discussions/16#discussioncomment-2386902>
- [x] first install automatically install
- [x] config dashboard
- [x] this emjoi shadow bug, maybe is kitty terminal(switch to wezterm compare)
- [x] some error tip from feline(active)
- [x] learn it option setting and lsp multi separate setting: fix lua global vim setting, <https://github.com/AstroNvim/AstroNvim>,

</details>

## Links

* [neovim form](https://neovim.discourse.group)
* [emmylua comment](https://emmylua.github.io/zh_CN/annotation.html)
* [neovimcraft](https://neovimcraft.com/)
