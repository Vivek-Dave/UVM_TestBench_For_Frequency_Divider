
/***************************************************
** class name  : freq_div_sequence_by2
** description : in==0 , divedes frequence by 2 
***************************************************/
class freq_div_sequence_by2 extends uvm_sequence#(freq_div_sequence_item);
  //----------------------------------------------------------------------------
  `uvm_object_utils(freq_div_sequence_by2)            
  //----------------------------------------------------------------------------

  freq_div_sequence_item txn;

  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequence_by2");  
    super.new(name);
  endfunction
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  virtual task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.in==0;};
    txn.rst=0;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
endclass:freq_div_sequence_by2

/***************************************************
** class name  : freq_div_sequence_by4
** description : in==1 
***************************************************/
class freq_div_sequence_by4 extends freq_div_sequence_by2;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(freq_div_sequence_by4)      
  //----------------------------------------------------------------------------
  
  freq_div_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequence_by4");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.in==1;};
    txn.rst=0;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:freq_div_sequence_by4

/***************************************************
** class name  : freq_div_sequence_by8
** description : in==2
***************************************************/
class freq_div_sequence_by8 extends freq_div_sequence_by2;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(freq_div_sequence_by8)      
  //----------------------------------------------------------------------------
  
  freq_div_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequence_by8");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.in==2;};
    txn.rst=0;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:freq_div_sequence_by8


class freq_div_sequence_by16 extends freq_div_sequence_by2;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(freq_div_sequence_by16)      
  //----------------------------------------------------------------------------
  
  freq_div_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequence_by16");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.in==3;};
    txn.rst=0;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:freq_div_sequence_by16


/***************************************************
** class name  : freq_div_sequence_by32
** description : in==4
***************************************************/
class freq_div_sequence_by32 extends freq_div_sequence_by2;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(freq_div_sequence_by32)      
  //----------------------------------------------------------------------------
  
  freq_div_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequence_by32");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.in==4;};
    txn.rst=0;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:freq_div_sequence_by32


/***************************************************
** class name  : freq_div_sequence_by64
** description : in==5
***************************************************/
class freq_div_sequence_by64 extends freq_div_sequence_by2;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(freq_div_sequence_by64)      
  //----------------------------------------------------------------------------
  
  freq_div_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequence_by64");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.in==5;};
    txn.rst=0;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:freq_div_sequence_by64

/***************************************************
** class name  : freq_div_sequence_by128
** description : in==6
***************************************************/
class freq_div_sequence_by128 extends freq_div_sequence_by2;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(freq_div_sequence_by128)      
  //----------------------------------------------------------------------------
  
  freq_div_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequence_by128");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.in==6;};
    txn.rst=0;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:freq_div_sequence_by128
/**************************************************
** class name  : freq_div_sequence_by256
** description : in==6
***************************************************/
class freq_div_sequence_by256 extends freq_div_sequence_by2;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(freq_div_sequence_by256)      
  //----------------------------------------------------------------------------
  
  freq_div_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="freq_div_sequence_by256");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.randomize()with{txn.in==7;};
    txn.rst=0;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:freq_div_sequence_by256


/***************************************************
** class name  : reset_sequence
** description : reset dut
***************************************************/
class reset_sequence extends freq_div_sequence_by2;
  //----------------------------------------------------------------------------   
  `uvm_object_utils(reset_sequence)      
  //----------------------------------------------------------------------------
  
  freq_div_sequence_item txn;
  
  //----------------------------------------------------------------------------
  function new(string name="reset_sequence");
      super.new(name);
  endfunction
  //----------------------------------------------------------------------------
  
  //----------------------------------------------------------------------------
  task body();
    txn=freq_div_sequence_item::type_id::create("txn");
    start_item(txn);
    txn.in=0;
    txn.rst=1;
    finish_item(txn);
  endtask:body
  //----------------------------------------------------------------------------
  
endclass:reset_sequence


