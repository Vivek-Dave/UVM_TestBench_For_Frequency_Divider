
class freq_div_env extends uvm_env;

   //---------------------------------------------------------------------------
   `uvm_component_utils(freq_div_env)
   //---------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  function new(string name="freq_div_env",uvm_component parent);
    super.new(name,parent);
  endfunction
  //----------------------------------------------------------------------------

  //-------------------- class handles -----------------------------------------
  freq_div_agent    agent_h;
  freq_div_coverage coverage_h;
  //freq_div_scoreboard scoreboard_h;
  //----------------------------------------------------------------------------

  //---------------------- build phase -----------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agent_h    = freq_div_agent::type_id::create("agent_h",this);
    coverage_h = freq_div_coverage::type_id::create("coverage_h",this);
    //scoreboard_h = freq_div_scoreboard::type_id::create("scoreboard_h",this);
  endfunction
  //----------------------------------------------------------------------------

  //-------------------------- connect phase -----------------------------------
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    agent_h.monitor_h.ap_mon.connect(coverage_h.analysis_export);
    // make scoreboard connection here
  endfunction
  //----------------------------------------------------------------------------
endclass:freq_div_env

