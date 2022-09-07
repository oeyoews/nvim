CMD = nvim
FILE = test/minimal.vim
ARG = "-N -u"

OS = "manjaro or linux"
SODTWARN = "ranger neovim"

run:
	$CMD $ARG $FILE

# install neovim nightly
# note to remove /usr/local/bin
install-neovim-nightly-bin:
	@cd neovim-nightly-bin; rm -rf nvim*.zst; makepkg; sudo pacman -U nvim*.zst --noconfirm
update-neovim-nightly-bin:
	@cd neovim-nightly-bin; rm -rf nvim*.zst *.deb; makepkg; sudo pacman -U nvim*.zst --noconfirm
