installDep:
	sudo pacman -S ranger python-neovim nodejs -y

# .PHONY: install
install:
	nvim -c PlugInstall
