# This contains the CL specific constraints for Top level PNR

# False paths to FireSim reset synchronizers
set_false_path -from [get_clocks clk] \
               -to   [get_cells {WRAPPER_INST/CL/pre_sync_rst_n_extra1_reg* \
                                 WRAPPER_INST/CL/pre_sync_rst_n_firesim_reg* \
                                 WRAPPER_INST/CL/rst_firesim_n_sync_reg* \
                                 WRAPPER_INST/CL/rst_extra1_n_sync_reg* }]


#set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets WRAPPER_INST/SH/kernel_clks_i/clkwiz_sys_clk/inst/CLK_CORE_DRP_I/clk_inst/clk_out2]

# Give the main simulator clock a better name
create_generated_clock -name host_clock [get_pins WRAPPER_INST/CL/firesim_clocking/inst/mmcme4_adv_inst/CLKOUT0]
