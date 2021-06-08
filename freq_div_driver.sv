
class freq_div_driver extends uvm_driver #(freq_div_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_component_utils(freq_div_driver)
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="freq_div_driver",uvm_component parent);
    super.new(name,parent);
  endfunction
  //---------------------------------------------------------------------------- 

  //--------------------------  virtual interface handel -----------------------  
  virtual interface intf vif;
  //----------------------------------------------------------------------------
  
  //-------------------------  get interface handel from top -------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!(uvm_config_db#(virtual intf)::get(this,"","vif",vif))) begin
      `uvm_fatal("driver","unable to get interface");
    end
  endfunction
  //----------------------------------------------------------------------------
  
  //---------------------------- run task --------------------------------------
  task run_phase(uvm_phase phase);
    freq_div_sequence_item txn=freq_div_sequence_item::type_id::create("txn");
    initilize(); // initilize dut at time 0
    forever begin
      seq_item_port.get_next_item(txn);
      drive_item(txn);
      seq_item_port.item_done();    
    end
  endtask
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  task initilize();
    vif.rst =0;
    vif.in  =0;
  endtask
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  task drive_item(freq_div_sequence_item txn);
    @(vif.cb);
    vif.cb.in  <= txn.in;
    vif.cb.rst <= txn.rst;
  endtask
  //----------------------------------------------------------------------------
endclass:freq_div_driver

