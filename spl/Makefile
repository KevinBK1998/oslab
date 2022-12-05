SPL_DIR = ~/KEVIN/myexpos/oslab/spl
SPL = cd ~/KEVIN/myexpos/spl && ./spl
SPL_XSM = osStartup.xsm boot_module.xsm scheduler_module.xsm device_manager.xsm resource_manager.xsm timer_interrupt.xsm INT7.xsm INT10.xsm 
compile: ${SPL_XSM}
.SUFFIXES: .spl .xsm
.spl.xsm:
	${SPL} ${SPL_DIR}/$<