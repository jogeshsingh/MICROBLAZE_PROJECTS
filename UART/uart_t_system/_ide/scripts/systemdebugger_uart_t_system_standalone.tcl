# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\VIVADO_2022\Microblaze_Projects\uart_t_system\_ide\scripts\systemdebugger_uart_t_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\VIVADO_2022\Microblaze_Projects\uart_t_system\_ide\scripts\systemdebugger_uart_t_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty 210319A288EEA" && level==0 && jtag_device_ctx=="jsn-Arty-210319A288EEA-0362d093-0"}
fpga -file E:/VIVADO_2022/Microblaze_Projects/uart_t/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw E:/VIVADO_2022/Microblaze_Projects/design_1_wrapper_1/export/design_1_wrapper_1/hw/design_1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow E:/VIVADO_2022/Microblaze_Projects/uart_t/Debug/uart_t.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
