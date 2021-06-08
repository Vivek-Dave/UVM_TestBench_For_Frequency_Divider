module binding_module();
//         RTL       Assertion    instance
bind freq_divider assertion_ip u_assert_ip(
	.clk(clk),
	.out(out),
  	.rst(rst),
    .in(in)
);

endmodule