" Vim syntax file
" Language:	SystemVerilog (superset extension of Verilog)
" Maintainer:	Amit Sethi <amitrajsethi@yahoo.com>
" Last Update:  Thu Jul 27 12:54:08 IST 2006
" Version: 1.1

" Extends Verilog syntax
" Requires $VIMRUNTIME/syntax/verilog.vim to exist

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif


" Read in Verilog syntax files
if version < 600
   so syntax/verilog.vim
else
   runtime! syntax/verilog.vim
endif


syn sync lines=1000

"##########################################################
"       SystemVerilog Syntax
"##########################################################

syn keyword verilogStatement   always_comb always_ff always_latch
syn keyword verilogStatement   class endclass
syn keyword verilogStatement   virtual local const protected
syn keyword verilogStatement   package endpackage
syn keyword verilogStatement   rand randc constraint randomize
syn keyword verilogStatement   with inside dist
syn keyword verilogStatement   randcase
syn keyword verilogStatement   sequence endsequence randsequence 
syn keyword verilogStatement   get_randstate set_randstate
syn keyword verilogStatement   srandom
syn keyword verilogStatement   logic bit byte time
syn keyword verilogStatement   int longint shortint
syn keyword verilogStatement   struct packed
syn keyword verilogStatement   final
syn keyword verilogStatement   import export
syn keyword verilogStatement   context pure 
syn keyword verilogStatement   void shortreal chandle string
syn keyword verilogStatement   clocking endclocking
syn keyword verilogStatement   interface endinterface modport
syn keyword verilogStatement   cover covergroup coverpoint endgroup
syn keyword verilogStatement   property endproperty
syn keyword verilogStatement   program endprogram
syn keyword verilogStatement   bins binsof illegal_bins ignore_bins
syn keyword verilogStatement   alias matches solve static assert
syn keyword verilogStatement   assume super before expect bind
syn keyword verilogStatement   extends null tagged extern this
syn keyword verilogStatement   first_match throughout timeprecision
syn keyword verilogStatement   timeunit priority type union 
syn keyword verilogStatement   uwire var cross ref wait_order intersect
syn keyword verilogStatement   wildcard within
syn keyword verilogStatement   triggered
syn keyword verilogStatement   std
syn keyword verilogStatement   new

syn keyword verilogTypeDef     typedef enum

syn keyword verilogConditional iff

syn keyword verilogRepeat      return break continue
syn keyword verilogRepeat      do while foreach

syn keyword verilogLabel       join_any join_none forkjoin
syn keyword verilogType analysis_fifo analysis_if avm_transport_imp avm_virtual_class
syn keyword verilogType cdns_hierarchy_only_printer cdns_list_printer cdns_phase_process_watcher
syn keyword verilogType default_report_server ovm_agent ovm_algorithmic_comparator
syn keyword verilogType ovm_analysis_export ovm_analysis_imp ovm_analysis_port ovm_barrier
syn keyword verilogType ovm_barrier_pool ovm_blocking_get_export ovm_blocking_get_imp
syn keyword verilogType ovm_blocking_get_peek_export ovm_blocking_get_peek_imp
syn keyword verilogType ovm_blocking_get_peek_port ovm_blocking_get_port ovm_blocking_master_export
syn keyword verilogType ovm_blocking_master_imp ovm_blocking_master_port ovm_blocking_peek_export
syn keyword verilogType ovm_blocking_peek_imp ovm_blocking_peek_port ovm_blocking_put_export
syn keyword verilogType ovm_blocking_put_imp ovm_blocking_put_port ovm_blocking_slave_export
syn keyword verilogType ovm_blocking_slave_imp ovm_blocking_slave_port ovm_blocking_transport_export
syn keyword verilogType ovm_blocking_transport_imp ovm_blocking_transport_port ovm_built_in_clone
syn keyword verilogType ovm_built_in_comp ovm_built_in_converter ovm_built_in_pair
syn keyword verilogType ovm_class_clone ovm_class_comp ovm_class_converter ovm_class_pair
syn keyword verilogType ovm_comparer ovm_component ovm_component_registry ovm_config_setting
syn keyword verilogType ovm_connector ovm_connector_base ovm_copy_map ovm_driver ovm_env ovm_event
syn keyword verilogType ovm_event_callback ovm_event_pool ovm_factory ovm_factory_override
syn keyword verilogType ovm_get_export ovm_get_imp ovm_get_peek_export ovm_get_peek_imp
syn keyword verilogType ovm_get_peek_port ovm_get_port ovm_hash ovm_hier_printer_knobs
syn keyword verilogType ovm_if_container ovm_in_order_built_in_comparator
syn keyword verilogType ovm_in_order_class_comparator ovm_in_order_comparator
syn keyword verilogType ovm_int_config_setting ovm_line_printer ovm_master_export ovm_master_imp
syn keyword verilogType ovm_master_port ovm_monitor ovm_nonblocking_get_export
syn keyword verilogType ovm_nonblocking_get_imp ovm_nonblocking_get_peek_export
syn keyword verilogType ovm_nonblocking_get_peek_imp ovm_nonblocking_get_peek_port
syn keyword verilogType ovm_nonblocking_get_port ovm_nonblocking_master_export
syn keyword verilogType ovm_nonblocking_master_imp ovm_nonblocking_master_port
syn keyword verilogType ovm_nonblocking_peek_export ovm_nonblocking_peek_imp
syn keyword verilogType ovm_nonblocking_peek_port ovm_nonblocking_put_export
syn keyword verilogType ovm_nonblocking_put_imp ovm_nonblocking_put_port
syn keyword verilogType ovm_nonblocking_slave_export ovm_nonblocking_slave_imp
syn keyword verilogType ovm_nonblocking_slave_port ovm_nonblocking_transport_export
syn keyword verilogType ovm_nonblocking_transport_imp ovm_nonblocking_transport_port
syn keyword verilogType ovm_object ovm_object_config_setting ovm_object_registry ovm_object_wrapper
syn keyword verilogType ovm_options_container ovm_packer ovm_peek_export ovm_peek_imp ovm_peek_port
syn keyword verilogType ovm_port_base ovm_port_base_base ovm_printer ovm_printer_knobs
syn keyword verilogType ovm_put_export ovm_put_imp ovm_put_port ovm_random_stimulus ovm_recorder
syn keyword verilogType ovm_report_global_server ovm_report_handler ovm_report_object
syn keyword verilogType ovm_report_server ovm_reporter ovm_req_rsp_driver ovm_root ovm_scope_stack
syn keyword verilogType ovm_scoreboard ovm_seq_item_prod_if ovm_slave_export ovm_slave_imp
syn keyword verilogType ovm_slave_port ovm_status_container ovm_string_config_setting ovm_subscriber
syn keyword verilogType ovm_table_printer ovm_table_printer_knobs ovm_test ovm_text_recorder
syn keyword verilogType ovm_threaded_component ovm_transaction ovm_transport_export
syn keyword verilogType ovm_transport_imp ovm_transport_port ovm_tree_printer ovm_tree_printer_knobs
syn keyword verilogType ovm_urm_message ovm_urm_message_format ovm_urm_override_operator
syn keyword verilogType ovm_urm_override_request ovm_urm_report_server ovm_void stream_info
syn keyword verilogType tlm_analysis_fifo tlm_b_get_export tlm_b_get_port tlm_b_put_export
syn keyword verilogType tlm_b_put_port tlm_blocking_get_if tlm_blocking_get_peek_if
syn keyword verilogType tlm_blocking_master_if tlm_blocking_peek_if tlm_blocking_put_if
syn keyword verilogType tlm_blocking_slave_if tlm_blocking_transport_if tlm_event tlm_fifo
syn keyword verilogType tlm_fifo_base tlm_get_export tlm_get_if tlm_get_peek_if tlm_get_port
syn keyword verilogType tlm_if_base tlm_master_if tlm_nb_get_export tlm_nb_get_port
syn keyword verilogType tlm_nb_put_export tlm_nb_put_port tlm_nonblocking_get_if
syn keyword verilogType tlm_nonblocking_get_peek_if tlm_nonblocking_master_if
syn keyword verilogType tlm_nonblocking_peek_if tlm_nonblocking_put_if tlm_nonblocking_slave_if
syn keyword verilogType tlm_nonblocking_transport_if tlm_peek_if tlm_put_export tlm_put_if
syn keyword verilogType tlm_put_port tlm_req_rsp_channel tlm_slave_if tlm_transport_channel
syn keyword verilogType tlm_transport_if tx_handle urm_command_line_processor_c urm_fifo
syn keyword verilogType ovm_scenario_base ovm_scenario ovm_scenario_noparam ovm_stimulus_scenario
syn keyword verilogType ovm_scenario_controller_base ovm_scenario_controller
syn keyword verilogType ovm_scenario_driver_base tlm_scenario_fifo tlm_scenario_req_rsp_channel
syn keyword verilogType ovm_scenario_driver ovm_scenario_driver_noparam request_driver
syn keyword verilogType ovm_req_rsp_sequence ovm_sequence ovm_random_sequence
syn keyword verilogType ovm_exhaustive_sequence ovm_simple_sequence ovm_sequence_item
syn keyword verilogType ovm_seq_item_cons_if ovm_sequencer ovm_seq_prod_if ovm_sequencer_base
syn keyword verilogType ovm_seq_cons_if ovm_virtual_sequencer

syn match   verilogGlobal      "`begin_\w\+"
syn match   verilogGlobal      "`end_\w\+"
syn match   verilogGlobal      "`remove_\w\+"
syn match   verilogGlobal      "`restore_\w\+"

syn match   verilogGlobal      "`[a-zA-Z0-9_]\+\>"

syn match   verilogNumber      "\<[0-9][0-9_\.]\=\([fpnum]\|\)s\>"
syn match   verilogNumber      "\<[0-9][0-9_\.]\=step\>"

syn match  verilogMethod       "\.atobin"
syn match  verilogMethod       "\.atohex\>"
syn match  verilogMethod       "\.atoi\>"
syn match  verilogMethod       "\.atooct\>"
syn match  verilogMethod       "\.atoreal\>"
syn match  verilogMethod       "\.bintoa\>"
syn match  verilogMethod       "\.hextoa\>"
syn match  verilogMethod       "\.itoa\>"
syn match  verilogMethod       "\.octtoa\>"
syn match  verilogMethod       "\.realtoa\>"
syn match  verilogMethod       "\.len\>"
syn match  verilogMethod       "\.getc\>"
syn match  verilogMethod       "\.putc\>"
syn match  verilogMethod       "\.toupper\>"
syn match  verilogMethod       "\.tolower\>"
syn match  verilogMethod       "\.compare\>"
syn match  verilogMethod       "\.icompare\>"
syn match  verilogMethod       "\.substr\>"
syn match  verilogMethod       "\.num\>"
syn match  verilogMethod       "\.exists\>"
syn match  verilogMethod       "\.first\>"
syn match  verilogMethod       "\.last\>"
syn match  verilogMethod       "\.name\>"
syn match  verilogMethod       "\.index\>"
syn match  verilogMethod       "\.find\>"
syn match  verilogMethod       "\.find_first\>"
syn match  verilogMethod       "\.find_last\>"
syn match  verilogMethod       "\.find_index\>"
syn match  verilogMethod       "\.find_first_index\>"
syn match  verilogMethod       "\.find_last_index\>"
syn match  verilogMethod       "\.min\>"
syn match  verilogMethod       "\.max\>"
syn match  verilogMethod       "\.unique\>"
syn match  verilogMethod       "\.unique_index\>"
syn match  verilogMethod       "\.sort\>"
syn match  verilogMethod       "\.rsort\>"
syn match  verilogMethod       "\.shuffle\>"
syn match  verilogMethod       "\.reverse\>"
syn match  verilogMethod       "\.sum\>"
syn match  verilogMethod       "\.product\>"
syn match  verilogMethod       "\.xor\>"
syn match  verilogMethod       "\.status\>"
syn match  verilogMethod       "\.kill\>"
syn match  verilogMethod       "\.self\>"
syn match  verilogMethod       "\.await\>"
syn match  verilogMethod       "\.suspend\>"
syn match  verilogMethod       "\.resume\>"
syn match  verilogMethod       "\.get\>"
syn match  verilogMethod       "\.put\>"
syn match  verilogMethod       "\.peek\>"
syn match  verilogMethod       "\.try_get\>"
syn match  verilogMethod       "\.try_peek\>"
syn match  verilogMethod       "\.try_put\>"
syn match  verilogMethod       "\.data\>"
syn match  verilogMethod       "\.eq\>"
syn match  verilogMethod       "\.neq\>"
syn match  verilogMethod       "\.next\>"
syn match  verilogMethod       "\.prev\>"
syn match  verilogMethod       "\.new\>"
syn match  verilogMethod       "\.size\>"
syn match  verilogMethod       "\.delete\>"
syn match  verilogMethod       "\.empty\>"
syn match  verilogMethod       "\.pop_front\>"
syn match  verilogMethod       "\.pop_back\>"
syn match  verilogMethod       "\.push_front\>"
syn match  verilogMethod       "\.push_back\>"
syn match  verilogMethod       "\.front\>"
syn match  verilogMethod       "\.back\>"
syn match  verilogMethod       "\.insert\>"
syn match  verilogMethod       "\.insert_range\>"
syn match  verilogMethod       "\.erase\>"
syn match  verilogMethod       "\.erase_range\>"
syn match  verilogMethod       "\.set\>"
syn match  verilogMethod       "\.swap\>"
syn match  verilogMethod       "\.clear\>"
syn match  verilogMethod       "\.purge\>"
syn match  verilogMethod       "\.start\>"
syn match  verilogMethod       "\.finish\>"

syn keyword verilogMethod "set_config_int"

syn match   verilogAssertion   "\<\w\+\>\s*:\s*\<assert\>\_.\{-});"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_verilog_syn_inits")
   if version < 508
      let did_verilog_syn_inits = 1
      command -nargs=+ HiLink hi link <args>
   else
      command -nargs=+ HiLink hi def link <args>
   endif

   " The default highlighting.
   HiLink verilogMethod          Function
   HiLink verilogTypeDef         TypeDef
   HiLink verilogAssertion       Include

   delcommand HiLink
endif

let b:current_syntax = "verilog_systemverilog"

" vim: ts=8
