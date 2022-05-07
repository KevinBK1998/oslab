CWD = cd ~/KEVIN/myexpos/oslab
XFS = cd ~/KEVIN/myexpos/xfs-interface && ./xfs-interface
XFS_ARGS = run ~/KEVIN/myexpos/oslab/loadToVM.xfs
XSM = ~/KEVIN/myexpos/xsm/xsm

clean:
	-rm -f mem spl/*.xsm expl/*.xsm
build:
	@echo compile spl files
	${MAKE} -C spl
	@echo compile expl files
	${MAKE} -C expl
	@echo copy to disk
	${XFS} ${XFS_ARGS} && ${CWD}
run: build
	${XSM}
run-sans-timer: build
	${XSM} --timer 0
debug: build
	${XSM} --debug