`ifndef SEQUENCE_PINGER_SVH
`define SEQUENCE_PINGER_SVH
// Use in sequence to get pinged when its time to send in the reqs
// Copied many parts of this code :P
class sequence_pinger extends uvm_object;
  `uvm_object_utils(sequence_pinger)

  int wait_cycles_min; // wait x cyles where x:[max,min]
  int wait_cycles_max;
  
  int burst_count_min; // # of reqs in a burst before moving back into wait mode
  int burst_count_max;

  int burst_spacing_min; // cycles between reqs
  int burst_spacing_max;

  int burst_en;


  function new(string name = "sequence_pinger");
    super.new(name);

  endfunction

endclass

`endif
