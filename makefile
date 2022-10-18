CMD = nvim
FILE = test/minimal.vim
ARG = "-N -u"
build_dir = neovim-nightly-bin

OS = "manjaro or linux"
SODTWARN = "ranger neovim"

# run:
	# $CMD $ARG $FILE

update:
	nvim -c PackerUpdate

# install neovim nightly
# note to remove /usr/local/bin
install-neovim-nightly-bin:
	@rm -rf $(build_dir); mkdir $(build_dir)
	@cp src/PKGBUILD $(build_dir)
	@cd $(build_dir); rm -rf nvim*.zst; makepkg; sudo pacman -U neovim-dev*.zst --noconfirm
