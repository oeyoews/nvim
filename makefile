CMD = nvim
FILE = test/minimal.vim
ARG = "-N -u"

OS = "manjaro or linux"
SODTWARN = "ranger neovim"

run:
	$CMD $ARG $FILE

# install neovim nightly
install-neovim-nightly-bin:
	cd neovim-nightly-bin; makepkg; sudo pacman -U nvim*.zst
