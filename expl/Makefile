EXPL_DIR = ~/oslab/expl
EXPL = cd ~/myexpos/expl && ./expl
EXPL_XSM = idle.xsm numbers100.xsm odd100.xsm even100.xsm

compile: ${EXPL_XSM}
.SUFFIXES: .expl .xsm
.expl.xsm:
	${EXPL} ${EXPL_DIR}/$<