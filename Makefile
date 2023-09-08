CWD = ~/oslab
DISK_DIR= ~/myexpos/xfs-interface
XFS = ${DISK_DIR}/xfs-interface
XFS_ARGS = run ~/oslab/loadToVM.xfs
XSM = cd ~/myexpos/xsm && ./xsm

clean:
	rm -f mem spl/*.xsm expl/*.xsm
build:
	@echo compile spl files
	${MAKE} -C spl
	@echo compile expl files
	${MAKE} -C expl
	@echo copy to temp
	${XFS} ${XFS_ARGS}
	@echo copy to disk
	cp ${CWD}/disk.xfs ${DISK_DIR}
run: build
	@echo
	@echo Powering Up
	@echo
	${XSM} && cd ${CWD}
run-sans-timer: build
	@echo
	@echo Powering Up without Timer Interrupt
	@echo
	${XSM} --timer 0 && cd ${CWD}
debug: build
	@echo
	@echo Powering Up in Debug Mode
	@echo
	${XSM} --debug && cd ${CWD}