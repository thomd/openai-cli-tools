SHELL = /bin/bash
BINDIR ?= $(HOME)/bin
SOURCEDIR = $(PWD)

link:
	@while read -r f; do echo "${BINDIR}/$${f}"; ln -s -f ${SOURCEDIR}/$${f} ${BINDIR}/$${f}; done < <(find . -type f -perm +111 -depth 1)

