
`ifndef TB_PKG
`define TB_PKG
`include "uvm_macros.svh"
package tb_pkg;
 import uvm_pkg::*;
 `include "freq_div_sequence_item.sv"        // transaction class
 `include "freq_div_sequence.sv"             // sequence class
 `include "freq_div_sequencer.sv"            // sequencer class
 `include "freq_div_driver.sv"               // driver class
 `include "freq_div_monitor.sv"              // monitor class
 `include "freq_div_agent.sv"                // agent class  
 `include "freq_div_coverage.sv"             // coverage class
 `include "freq_div_env.sv"                  // environment class

 `include "freq_div_test.sv"                 // test1
 //`include "test2.sv"
 //`include "test3.sv"

endpackage
`endif 


