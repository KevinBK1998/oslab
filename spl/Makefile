SPL_DIR = ~/oslab/spl
SPL = cd ~/myexpos/spl && ./spl
SPL_XSM = osStartup.xsm boot_module.xsm exception_handler.xsm scheduler_module.xsm device_manager.xsm resource_manager.xsm process_manager.xsm memory_manager.xsm timer_interrupt.xsm console_interrupt.xsm disk_interrupt.xsm INT6.xsm INT7.xsm INT8.xsm INT9.xsm INT10.xsm INT11.xsm INT15.xsm
compile: ${SPL_XSM}
.SUFFIXES: .spl .xsm
.spl.xsm:
	${SPL} ${SPL_DIR}/$<