EXPL_DIR = ~/KEVIN/myexpos/oslab/expl
EXPL = cd ~/KEVIN/myexpos/expl && ./expl
EXPL_XSM = idle.xsm gcd.xsm

compile: ${EXPL_XSM}
.SUFFIXES: .expl .xsm
.expl.xsm:
	${EXPL} ${EXPL_DIR}/$<