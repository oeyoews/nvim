<div align="center">
  <img src="img/vim-rainbow.png" alt="vim" align="center" width=144><hr>
  <h2>🇳  Neovim</h2>
  <p> 💡 A personal neovim configuration</p>
	🏠 <a href="https://oeyoews.github.io/nvim">Home</a>&nbsp;
  <!-- 🔗 <a href="">Links </a>&nbsp; -->
  <!-- ⬇️  <a  href="">Download</a>&nbsp; -->
  <!-- 🔰 <a  href="">More</a>&nbsp; -->
  <hr>
</div>

<div align="center">
<img src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-Semantic-e10079.svg?style=flat-square" alt="Semantic Release"/>
<img src="https://img.shields.io/badge/Maintain-Yes-blueviolet.svg?style=flat-square&logo=Chakra-Ui&color=90E59A&logoColor=green" alt="status" >
<img src="https://img.shields.io/badge/License-MIT-green.svg?style=flat-square&logo=GNU&color=df967f&label=License" alt="license">
<img src="https://img.shields.io/badge/Neovim-0.8.2-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=green" alt="neovim">
<img src="https://img.shields.io/gitlab/v/tag/oeyoews/nvim?color=green&logo=FastAPI&style=flat-square" alt="tag">
<img src="https://img.shields.io/badge/Lang-lua-blueviolet.svg?style=flat-square&logo=lua&color=90E59A&logoColor=blue" alt="lang">
</div>
<hr>

## 🍾 Screenshots

| <img src="img/n1.png" align="bottom" width=256/> | <img src="img/n2.png" align="bottom" width=256/> | <img src="img/n3.png" align="bottom" width=256/> |
| :----------------------------------------------: | :----------------------------------------------: | ------------------------------------------------ |
| <img src="img/04.png" align="bottom" width=256/> | <img src="img/05.png" align="bottom" width=256/> | <img src="img/06.png" align="bottom" width=256/> |

## 💡 What's that

<!-- A personal neovim configuration -->

<!-- https://readme-typing-svg.herokuapp.com/demo/ -->

<a href="https://git.io/typing-svg"><img src="https://readme-typing-svg.herokuapp.com?font=FiraCode&color=63F3E1&vCenter=true&lines=A+personal+neovim+configuration" alt="Typing SVG" /></a>

<h2>  File Struct </h2>

```zsh
📂 ~/.config/nvim/lua
├── 📂 modules
│   ├── 📂langs
│   ├── 📂tools
│   ├── 📂ui
│   └── 📂utils
└── 📂user
```

<h2> ⬇️ Install </h2>

<!-- - NOTE: just support nightly -->

- install pynvim and nightly neovim and clone this repository

### Install neovim

```bash
cd Neovim-nightly-bin && make
```

```bash
# please backup your ~/.config/nvim folder or your nvim configuration firstly
cd ~/.config && git clone --depth 1 https://gitlab.com/oeyoews/nvim.git
```

## 🚀 Features

> Coming

## ✅ TODO

- [ ] https://github.com/simrat39/inlay-hints.nvim
- [x] auto dark
- [x] auto list
- [ ] refactor mason install
- [ ] nul-ls format by hand, or how to deverbose output exit to terminal

## 🔗 Links

- [convertsnippet snippet to json](https://pypi.org/project/ultisnips-vscode/)
- [convert](https://github.com/VincentCordobes/convert-snippets/)
- [neovimcraft](https://neovimcraft.com/)
- [news](https://this-week-in-neovim.org/latest)
- [awesome](https://github.com/rockerBOO/awesome-neovim)
- [chat](https://app.element.io/#/room/#neovim:matrix.org)

## Plugins

| PluginName | Feature |
| ------ | ---- |
| Comment.nvim | 在代码中添加和编辑注释 |
| autolist.nvim | 为代码提供自动完成列表 |
| bufferline.nvim | 显示和管理缓冲区的标签栏 |
| cmp-buffer | 为自动完成插件 nvim-cmp 提供缓冲区补全功能 |
| cmp-nvim-lsp | 为自动完成插件 nvim-cmp 提供 LSP 补全功能 |
| cmp-nvim-ultisnips | 为自动完成插件 nvim-cmp 提供 UltiSnips 补全功能 |
| cmp-path | 为自动完成插件 nvim-cmp 提供路径补全功能 |
| cmp-tw2css | 为自动完成插件 nvim-cmp 提供 Tailwind CSS 补全功能 |
| codeium.vim | 用于编辑和运行代码的插件 |
| dressing.nvim | 为代码添加注释、空行等装饰性功能 |
| gitsigns.nvim | 在代码编辑器中显示 Git 状态和修改 |
| icon-picker.nvim | 在编辑器中选择和插入图标 |
| indent-blankline.nvim | 在代码缩进处显示可见的空白符号 |
| lazy.nvim | 为 Vim 提供延迟加载插件的功能 |
| leap.nvim | 快速跳转和查找符号定义的插件 |
| live-server.nvim | 在浏览器中实时预览 HTML、CSS 和 JavaScript 文件 |
| lsp-format.nvim | 格式化代码的 LSP 插件 |
| lspsaga.nvim | 提供 LSP 的附加功能和增强体验 |
| lualine.nvim | 创建状态栏和标签栏的 Lua 插件 |
| markdown-preview.nvim | 在浏览器中预览 Markdown 文件 |
| mason-lspconfig.nvim | 为 LSP 提供配置的 Lua 插件 |
| mason-null-ls.nvim | 提供 LSP 的空白补全功能 |
| mason-tool-installer.nvim | 用于安装和管理开发工具的插件 |
| mason.nvim | 为 Vim 提供构建、测试和运行项目的功能 |
| neodev.nvim | 管理和操作 NeoVim 的插件 |
| neogen | 为 Vim 提供代码生成和代码片段功能 |
| nui.nvim | 在 Neovim 中创建用户界面的 Lua 框架 |
| null-ls.nvim | 为 LSP 提供缺失的功能和补全 |
| nvim-autopairs | 自动补全括号、引号等字符的插件 |
| nvim-cmp | 提供快速、智能的代码补全框架 |
| nvim-colorizer.lua | 在编辑器中高亮显示颜色代码 |
| nvim-lspconfig | 配置和管理 LSP 的 Lua 插件 |
| nvim-notify | 在 Neovim 中显示通知消息 |
| nvim-surround | 通过快捷键为代码添加、删除、修改周围的符号 |
| nvim-toggler | 在代码中切换开关的插件 |
| nvim-tree.lua | 在侧边栏显示文件树的 Lua 插件 |
| nvim-treesitter | 用于语法高亮和代码分析的插件 |
| nvim-treesitter-refactor | 为 nvim-treesitter 提供重构功能 |
| nvim-ts-autotag | 自动添加和关闭 HTML、XML 标签的插件 |
| nvim-ts-rainbow | 为括号添加彩虹色彩的插件 |
| nvim-web-devicons | 在编辑器中显示文件类型图标 |
| nvim_context_vt | 在状态栏显示当前函数和变量的上下文信息 |
| plenary.nvim | 提供 Lua 函数的实用工具集 |
| ranger.nvim | 在 Neovim 中浏览和管理文件的插件 |
| tailwindcss-colors.nvim | 提供 Tailwind CSS 颜色的补全和预览 |
| telescope.nvim | 为文件查找、模糊查找、代码搜索等提供强大的模糊查找框架 |
| tokyonight.nvim | 漂亮的主题配色方案 |
| trim.nvim | 为当前行和选定文本提供剪切和删除的功能 |
| ultisnips | 用于创建和使用代码片段的插件 |
| vim-quickrun | 快速运行代码的插件 |
| vim-snippets | 提供丰富的代码片段库 |
| vim-tiddlywiki | 在 Vim 中编辑 TiddlyWiki 笔记 |
| which-key.nvim | 在按键时显示可用的按键绑定和命令列表的插件 |
