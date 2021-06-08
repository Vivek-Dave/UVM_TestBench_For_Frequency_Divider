class freq_div_sequencer extends uvm_sequencer#(freq_div_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_component_utils(freq_div_sequencer)  
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequencer",uvm_component parent);  
    super.new(name,parent);
  endfunction
  //----------------------------------------------------------------------------
  
endclass:freq_div_sequencer

