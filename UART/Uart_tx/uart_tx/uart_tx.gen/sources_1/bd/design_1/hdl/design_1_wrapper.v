//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed Jul 17 19:04:08 2024
//Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_in1_0,
    reset,
    usb_uart_rxd,
    usb_uart_txd);
  input clk_in1_0;
  input reset;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire clk_in1_0;
  wire reset;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.clk_in1_0(clk_in1_0),
        .reset(reset),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
