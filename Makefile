prefix      = /usr/local
dirmode     = 0755
filemode    = 0444
binmode     = 0555

bindir      = ${prefix}/bin

all:

mkdirs:
	test -d "${bindir}" || install -d -m ${dirmode} "${bindir}"

install-bin: mkdirs
	install -m ${binmode} kalye "${bindir}"

install: install-bin

.PHONY: all install install-bin
