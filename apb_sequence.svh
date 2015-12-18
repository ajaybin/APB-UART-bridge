`ifndef APB_SEQUENCE_SVH
`define APB_SEQUENCE_SVH
class apb_sequence extends uvm_sequence #(REQ = apb_seq_item);
  `uvm_object_utils(apb_sequence)
  `uvm_declare_p_sequencer(testbench_pkg::apb_seqr)

  function new(string name = "apb_sequence");
    super.new(name);
  endfunction
 
  task body();
    super.body();


  endtask


endclass
`endif
