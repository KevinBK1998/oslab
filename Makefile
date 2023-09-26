CWD = ~/oslab
DISK_DIR= ~/myexpos/xfs-interface
XFS = ${DISK_DIR}/xfs-interface
XFS_ARGS = run ~/oslab/loadToVM.xfs
XSM = cd ~/myexpos/xsm && ./xsm

run: build
	@echo
	@echo Powering Up
	@echo
	${XSM} && cd ${CWD}
clean:
	rm -f mem library.xsm spl/*.xsm expl/*.xsm
build:
	@echo compile spl files
	${MAKE} -C spl
	@echo compile expl files
	${MAKE} -C expl
	@echo translate labels in library
	python3 label_translator.py
	@echo copy disk to temp
	cp ${DISK_DIR}/disk.xfs ${CWD}
	@echo copy to temp
	${XFS} ${XFS_ARGS}
	@echo copy to disk
	cp ${CWD}/disk.xfs ${DISK_DIR}

run-sans-timer: build
	@echo
	@echo Powering Up without Timer Interrupt
	@echo
	${XSM} --timer 0 && cd ${CWD}
debug: build
	@echo
	@echo Powering Up in Debug Mode
	@echo
	${XSM} --timer 1000 --debug && cd ${CWD}