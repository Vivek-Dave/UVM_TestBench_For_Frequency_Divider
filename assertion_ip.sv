`include "uvm_macros.svh"
module assertion_ip(in,clk,rst,out);
    import uvm_pkg::*;
    input [2:0]in;
    input clk;
    input rst;
    input out;
  
    time divby2   =   200ns;
    time divby4   =   400ns;
    time divby8   =   800ns;
    time divby16  =  1600ns;
    time divby32  =  3200ns;
    time divby64  =  6400ns;
    time divby128 = 12800ns;
    time divby256 = 25600ns;
  
  	property T_clk(time clk_period,int t_in);
		time current_time;
        @(posedge out) disable iff(rst==1 || in!=t_in)
        (('1,current_time=$time) |=>(clk_period == $time -current_time));
    endproperty
 
  	assert_divby2:assert property (T_clk(divby2,0))
      				`uvm_info("ASSERTION_IP","TB_INFO : divby2  correct",UVM_MEDIUM) 
       	          else
                    `uvm_warning(" TB_INFO : divby2 not correct",UVM_MEDIUM)
  	
    assert_divby4:assert property (T_clk(divby4,1))
        			`uvm_info("ASSERTION_IP"," TB_INFO : divby4  correct",UVM_MEDIUM) 
       	          else
                    `uvm_warning(" TB_INFO : divby4 not correct",UVM_MEDIUM)
      
    assert_divby8:assert property (T_clk(divby8,2))
        			`uvm_info("ASSERTION_IP"," TB_INFO : divby8  correct",UVM_MEDIUM) 
       	          else
                    `uvm_warning(" TB_INFO : divby8 not correct",UVM_MEDIUM)
        
    assert_divby16:assert property (T_clk(divby16,3))
          			`uvm_info("ASSERTION_IP"," TB_INFO : divby16  correct",UVM_MEDIUM) 
       	          else
                    `uvm_warning(" TB_INFO : divby16 not correct",UVM_MEDIUM)
    
    assert_divby32:assert property (T_clk(divby32,4))
            		`uvm_info("ASSERTION_IP"," TB_INFO : divby32  correct",UVM_MEDIUM) 
       	          else
                    `uvm_warning(" TB_INFO : divby32 not correct",UVM_MEDIUM)
    
    assert_divby64:assert property (T_clk(divby64,5))
              		`uvm_info("ASSERTION_IP"," TB_INFO : divby64  correct",UVM_MEDIUM) 
       	          else
                    `uvm_warning(" TB_INFO : divby64 not correct",UVM_MEDIUM)
              
    assert_divby128:assert property (T_clk(divby128,6))
                	`uvm_info("ASSERTION_IP"," TB_INFO : divby128  correct",UVM_MEDIUM) 
       	          else
                    `uvm_warning(" TB_INFO : divby128 not correct",UVM_MEDIUM)
                
    assert_divby256:assert property (T_clk(divby256,7))
                  	`uvm_info("ASSERTION_IP"," TB_INFO : divby256  correct",UVM_MEDIUM) 
       	          else
                    `uvm_warning(" TB_INFO : divby256 not correct",UVM_MEDIUM)
endmodule