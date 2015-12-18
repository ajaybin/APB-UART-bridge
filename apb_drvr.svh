`ifndef APB_DRIVER_SVH
`define APB_DRIVER_SVH
class apb_drvr extends uvm_driver#(apb_seq_item);
  `uvm_component_utils(apb_drvr)
  
  virtual apb_uart_bridge_if apb_if;
  
  function new (string name = "apb_drvr", uvm_component parent);
    super.new(name,parent);
  endfunction 

  function void build_phase (uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual apb_uart_bridge_if)::get(this,"","dut_vif",apb_if))
      `uvm_error ("Build Phase","Interface Retrieval failed")    
  endfunction

  task run_phase (uvm_phase phase);
    super.run_phase(phase);
	
  endtask  
  
endclass
`endif