<div align="center">
  <img src="img/vim.png" alt="vim" align="center" width=144><hr>
  <h2>🇳  Neovim</h2>
  <p> 💡 A personal neovim configuration</p>
	🏠 <a href="https://oeyoews.github.io/nvim">Home</a>&nbsp;
  🔗 <a href="">Links </a>&nbsp;
  ⬇️  <a  href="">Download</a>&nbsp;
  🔰 <a  href="">More</a>&nbsp;
  <hr>
</div>

<div align="center">
<!-- <img alt="Lines of code" src="https://img.shields.io/tokei/lines/github/oeyoews/nvim?color=cyan&logo=github&logoColor=violet&style=flat-square"> -->
<!-- <img src="https://img.shields.io/badge/Desktop-Gnome-blueviolet.svg?style=flat-square&logo=gnome&color=90E59A&logoColor=cyan" alt="desktop"> -->
<!-- <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/oeyoews/nvim?label=Size&logo=git&style=flat-square"> -->
<!-- <img src="https://img.shields.io/badge/GIT-Yes-green.svg?style=flat-square&logo=git&label=GIT" alt="git"> -->
<!-- <img src="https://img.shields.io/badge/Shell-zsh-white.svg?style=flat-square&logo=Gnu-Bash&logoColor=9ECE6A&color=BB9AF7" alt="shell"> -->
<img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/oeyoews/nvim?color=cyan&logo=github&logoColor=cyan&style=flat-square">
<img alt="GitHub issues" src="https://img.shields.io/github/issues-raw/oeyoews/nvim?color=green&logo=github&logoColor=cyan&style=flat-square">
<img src="https://img.shields.io/badge/Sync-Yes-blueviolet.svg?style=flat-square&logo=gitlab&color=90E59A&logoColor=green" alt="sync">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/oeyoews/nvim?logo=github&logoColor=cyan&style=flat-square">
<img src="https://img.shields.io/badge/Terminal-gnometerminal-blueviolet.svg?style=flat-square&logo=powershell&color=90E59A&logoColor=green" alt="terminal">
<img src="https://img.shields.io/github/directory-file-count/oeyoews/nvim?color=green&label=Files&logo=Gnu&logoColor=violet&style=flat-square" alt="files">
<img src="https://img.shields.io/badge/Maintain-Yes-blueviolet.svg?style=flat-square&logo=Chakra-Ui&color=90E59A&logoColor=green" alt="status" >
<img src="https://img.shields.io/badge/System-Linux-white.svg?style=flat-square&logo=linux&logoColor=cyan&color=BB9AF7" alt="system">
<img src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-Semantic-e10079.svg?style=flat-square" alt="Semantic Release"/>
<img src="https://img.shields.io/badge/License-AGPL--3.0-green.svg?style=flat-square&logo=GNU&color=df967f&label=License" alt="license">
<img src="https://img.shields.io/badge/Neovim-nightly-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=green" alt="neovim">
<img src="https://img.shields.io/badge/Github-Yes-green.svg?style=flat-square&logo=github&label=Github&logoColor=cyan" alt="github">
<img src="https://img.shields.io/badge/Gitlab-Yes-ffcc00.svg?style=flat-square&logo=gitlab&label=Gitlab" alt="gitlab">
<img src="https://img.shields.io/gitlab/v/tag/oeyoews/nvim?color=green&logo=FastAPI&style=flat-square" alt="tag">
<img src="https://img.shields.io/badge/Lang-lua-blueviolet.svg?style=flat-square&logo=lua&color=90E59A&logoColor=blue" alt="lang">
</div>
<hr>

## 🍾 Screenshots

| <img src="img/00.png" align="bottom" width=256/> | <img src="img/01.png" align="bottom" width=256/> | <img src="img/02.png" align="bottom" width=256/> |
| :----------------------------------------------: | :----------------------------------------------: | ------------------------------------------------ |
| <img src="img/03.png" align="bottom" width=256/> | <img src="img/04.png" align="bottom" width=256/> | <img src="img/05.png" align="bottom" width=256/> |
| <img src="img/06.png" align="bottom" width=256/> | <img src="img/07.png" align="bottom" width=256/> | <img src="img/08.png" align="bottom" width=256/> |

## 💡 What's that

<!-- A personal neovim configuration -->

<!-- https://readme-typing-svg.herokuapp.com/demo/ -->

<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.herokuapp.com?font=FiraCode&color=63F3E1&vCenter=true&lines=A+personal+neovim+configuration" alt="Typing SVG" /></a>

<h2> 📂 File Struct </h2>

<details>
<summary>File Tree</summary>

```bash

lua/
├── modules
│   ├── langs
│   │   ├── cmp.lua
│   │   ├── lspconfig.lua
│   │   ├── lspsaga.lua
│   │   ├── mason.lua
│   │   ├── null-ls.lua
│   │   ├── treesitter.lua
│   │   └── trouble.lua
│   ├── tools
│   │   ├── comment.lua
│   │   ├── gitsigns.lua
│   │   ├── header42.lua
│   │   ├── hop.lua
│   │   ├── indent.lua
│   │   ├── nvim_tree.lua
│   │   ├── persistence.lua
│   │   ├── quickrun.lua
│   │   ├── ranger.lua
│   │   ├── startup.lua
│   │   ├── telescope.lua
│   │   ├── trim.lua
│   │   └── whichkey.lua
│   ├── ui
│   │   ├── bufferline.lua
│   │   ├── custom_ui.lua
│   │   ├── fidget.lua
│   │   ├── notify.lua
│   │   ├── tokyonight.lua
│   │   └── web_icons.lua
│   └── utils
│       ├── autocmd.lua
│       ├── bootstrap.lua
│       ├── disable.lua
│       ├── filetype.lua
│       ├── functions.lua
│       ├── mappings.lua
│       ├── oeyoews.lua
│       ├── options.lua
│       ├── pluginlist.lua
│       └── usercmd.lua
└── user
    ├── capabilities.lua
    ├── fun.lua
    ├── lazyload
    │   ├── icon_picker.lua
    │   ├── mkdp.lua
    │   └── neorg.lua
    ├── modules.lua
    └── pcall.lua

7 directories, 43 files
```

</details>

<h2> ⬇️ Install </h2>

- NOTE: just support nightly
- install pynvim and nightly neovim and clone this repository

```bash
# please backup your ~/.config/nvim folder or your nvim configuration firstly
cd ~/.config && git clone --depth 1 https://gitlab.com/oeyoews/nvim.git
```

## 🚀 Features

<details>
<summary>expand</summary>

- switch day-night nvim theme base time automatically
- module manage nvim config, use pure lua
- builtin plugins, like tokynight, notify and some telescope extensions .
- install lsp-servers base your current development automatically
- faster nvim startup, about (60~70) ms
- support markdown-preview and past image in neovim
- support ranger
- hide tilde and show time in statusline
- customize shortkeys
- support codespell
- hide cursorline in insert mode
- customize snippets with ultisnips
- backup plugin snapshot with packer
- etc

</details>

## ✅ TODO

[TODO](docs/todo.norg)

## 📖 Wiki

- For more details, please read the code or check this [nvim wiki](https://gitlab.com/oeyoews/nvim/-/wikis/home)

## 🔗 Links

- [neovim form](https://neovim.discourse.group)
- [emmylua comment](https://emmylua.github.io/zh_CN/annotation.html)
- [neovimcraft](https://neovimcraft.com/)
- [news](https://this-week-in-neovim.org/latest)
