EXPL_DIR = ~/oslab/expl
EXPL = cd ~/myexpos/expl && ./expl
EXPL_XSM = idle.xsm shell.xsm rwfork.xsm

compile: ${EXPL_XSM}
.SUFFIXES: .expl .xsm
.expl.xsm:
	${EXPL} ${EXPL_DIR}/$<