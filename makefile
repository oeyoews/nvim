CMD = nvim
FILE = test/minimal.vim
ARG = "-N -u"

run:
	$CMD $ARG $FILE
