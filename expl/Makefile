EXPL_DIR = ~/KEVIN/myexpos/oslab/expl
EXPL = cd ~/KEVIN/myexpos/expl && ./expl
EXPL_XSM = idle.xsm oddnumbers100.xsm evennumbers100.xsm

compile: ${EXPL_XSM}
.SUFFIXES: .expl .xsm
.expl.xsm:
	${EXPL} ${EXPL_DIR}/$<