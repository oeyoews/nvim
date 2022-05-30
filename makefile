installDep:
	sudo pacman -S ranger python-neovim nodejs -y
install:
	nvim -c PlugInstall
