
class freq_div_test extends uvm_test;

    //--------------------------------------------------------------------------
    `uvm_component_utils(freq_div_test)
    //--------------------------------------------------------------------------

    //--------------------------------------------------------------------------
    function new(string name="freq_div_test",uvm_component parent);
	    super.new(name,parent);
    endfunction
    //--------------------------------------------------------------------------

    freq_div_env env_h;
    int file_h;
    freq_div_sequence_by2 seq_2;
    freq_div_sequence_by4 seq_4;
    freq_div_sequence_by8 seq_8;
    freq_div_sequence_by16 seq_16;
    freq_div_sequence_by32 seq_32;
    freq_div_sequence_by64 seq_64;
    freq_div_sequence_by128 seq_128;
    freq_div_sequence_by256 seq_256;
    reset_sequence rst_seq;

    //--------------------------------------------------------------------------
    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      env_h   = freq_div_env::type_id::create("env_h",this);
      rst_seq   = reset_sequence::type_id::create("rst_seq");
      seq_2   = freq_div_sequence_by2::type_id::create("seq_2");
      seq_4   = freq_div_sequence_by4::type_id::create("seq_4");
      seq_8   = freq_div_sequence_by8::type_id::create("seq_8");
      seq_16  = freq_div_sequence_by16::type_id::create("seq_16");
      seq_32  = freq_div_sequence_by32::type_id::create("seq_32");
      seq_64  = freq_div_sequence_by64::type_id::create("seq_64");
      seq_128 = freq_div_sequence_by128::type_id::create("seq_128");
      seq_256 = freq_div_sequence_by256::type_id::create("seq_256");
    endfunction
    //--------------------------------------------------------------------------

    //--------------------------------------------------------------------------
    function void end_of_elobartion_phase(uvm_phase phase);
      //factory.print();
      $display("End of eleboration phase in agent");
    endfunction
    //--------------------------------------------------------------------------

    //--------------------------------------------------------------------------
    function void start_of_simulation_phase(uvm_phase phase);
      $display("start_of_simulation_phase");
      file_h=$fopen("LOG_FILE.log","w");
      set_report_default_file_hier(file_h);
      set_report_severity_action_hier(UVM_INFO,UVM_DISPLAY+UVM_LOG);
      set_report_verbosity_level_hier(UVM_MEDIUM);
    endfunction
    //--------------------------------------------------------------------------

    //--------------------------------------------------------------------------
    task run_phase(uvm_phase phase);
	      phase.raise_objection(this);
      		rst_seq.start(env_h.agent_h.sequencer_h);
            seq_2.start(env_h.agent_h.sequencer_h);
            #30000;
            rst_seq.start(env_h.agent_h.sequencer_h);
            seq_4.start(env_h.agent_h.sequencer_h);
            #60000;
      		rst_seq.start(env_h.agent_h.sequencer_h);
            seq_8.start(env_h.agent_h.sequencer_h);
            #120000;
      		rst_seq.start(env_h.agent_h.sequencer_h);
            seq_16.start(env_h.agent_h.sequencer_h);
      		#240000;
      		rst_seq.start(env_h.agent_h.sequencer_h);
            seq_32.start(env_h.agent_h.sequencer_h);
      		#480000;
      		rst_seq.start(env_h.agent_h.sequencer_h);
            seq_64.start(env_h.agent_h.sequencer_h);
      		#960000;
      		rst_seq.start(env_h.agent_h.sequencer_h);
            seq_128.start(env_h.agent_h.sequencer_h);
      		#1920000;
      		rst_seq.start(env_h.agent_h.sequencer_h);
            seq_256.start(env_h.agent_h.sequencer_h);
      		#3840000;
            #100;
	      phase.drop_objection(this);
    endtask
    //--------------------------------------------------------------------------

endclass:freq_div_test

