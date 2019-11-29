# aclk {FREQ_HZ 100000000 CLK_DOMAIN soc_bd_system_clk PHASE 0.000}
# Clock Domain: soc_bd_system_clk
create_clock -name aclk -period 10.000 [get_ports aclk]
# Generated clocks
