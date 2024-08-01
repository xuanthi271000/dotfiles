#! /usr/bin/tclsh

#=======================================================================
# File name   : initPrimeTime.tcl
# Date        : 10 - 25 - 23
# Description : 
# Email       : thip@uniquify.com 
#=======================================================================

puts "####################"
puts "## ENTER PBA MODE ##"
puts "####################"
puts "1 - none"
puts "2 - path"
puts "3 - exhaustive"
puts "4 - ml_exhaustive"
puts -nonewline "## Your choice? -> "
flush stdout
set pba [gets stdin]

switch $pba {
  1       {set pbaMode "none"}
  2       {set pbaMode "path"}
  3       {set pbaMode "exhaustive"}
  4       {set pbaMode "ml_exhaustive"}
  default {set pbaMode "path"}
}


##-------------------------
## Create i2f f20 i20 group
##-------------------------
group_path -name f2f -from [all_registers] -to [all_registers]
group_path -name i2f -from [remove_from_collection [all_inputs] [all_clocks]] -to [all_registers]
group_path -name f2o -from [all_registers] -to [all_outputs]
group_path -name i2o -from [remove_from_collection [all_inputs] [all_clocks]] -to [all_outputs]

##------
## Alias
##------

alias rpt_max_timing     {report_timing -delay_type max -max_path 1000000 -nosplit -capacitance -transition_time -input_pins -nets -crosstalk_delta -derate -physical}
alias rpt_min_timing     {report_timing -delay_type min -max_path 1000000 -nosplit -capacitance -transition_time -input_pins -nets -crosstalk_delta -derate -physical}

alias rpt_max            {report_timing -delay_type max -nosplit -pba_mode ${pbaMode}}
alias rpt_min            {report_timing -delay_type min -nosplit -pba_mode ${pbaMode}}

alias frpt_max           {report_timing -delay_type max -nosplit -pba_mode ${pbaMode} -path_type full_clock_expanded}
alias frpt_min           {report_timing -delay_type min -nosplit -pba_mode ${pbaMode} -path_type full_clock_expanded}

alias srpt_max           {report_timing -delay_type max -nosplit -pba_mode ${pbaMode} -path_type summary -start_end_pair}
alias srpt_min           {report_timing -delay_type min -nosplit -pba_mode ${pbaMode} -path_type summary -start_end_pair}

alias rpt_cons_max       {report_constraint -all_violators -nosplit -pba_mode ${pbaMode} -max_delay}
alias rpt_cons_min       {report_constraint -all_violators -nosplit -pba_mode ${pbaMode} -min_delay}

alias rpt_global         {report_global_timing -pba_mode ${pbaMode}}

alias page_on            {set_app_var sh_enable_page_mode true}
alias page_off           {set_app_var sh_enable_page_mode false}

alias un_on              {set_app_var timing_report_unconstrained_paths true}
alias un_off             {set_app_var timing_report_unconstrained_paths false}

alias rs                 {restore_session}

alias win                {start_gui}

##------------------
## Synopsys PT setup
##------------------

suppress_message {ENV-003 PTSR-004}
suppress_message CMD-029
history keep 200
set_app_var sh_enable_line_editing true

##----------
## PT Tricks
##----------

#####################################################################
# rpt_cell -- Procedure to report all cells in the design
#
# usage: rpt_cell [-all_cells] [-hier_only] [-total_only]
#

proc rpt_cell args {
  suppress_message UID-101

  set option [lindex $args 0]
  if { [string match -a* $option] } {
    echo " "
    echo "Attributes:"
    echo " b  - black-box (unknown)"
    echo " d  - dont_touch"
    echo " h  - hier"
    echo " n  - noncombo"
    echo " t  - test cell"
    echo " "
    echo [format "%-32s %-14s %5s %11s" "Cell" "Reference" "Area" "Attributes"]
    echo "-----------------------------------------------------------------"
  } elseif { [string match -t* $option] } {
    set option "-total_only"
    echo " "
    set cd [current_design]
    echo "Performing cell count on [get_object_name $cd] ..."
    echo " "
  } elseif { [string match -h* $option] } {
    set option "h";    # hierarchical only
    echo " "
    set cd [current_design]
    echo "Performing hierarchical cell report on [get_object_name $cd] ..."
    echo " "
    echo [format "%-36s %-14s %11s" "Cell" "Reference" "Attributes"]
    echo "---------------------------------------------------------------"
  } else {
    echo " "
    echo "  Message: Option Required"
    echo "  Usage: rpt_cell \[-all_cells\] \[-hier_only\] \[-total_only\]"
    echo " "
    return
  }

  # initialize summary vars
  set total_cells   0
  set dt_cells      0
  set hier_cells    0
  set hier_dt_cells 0
  set seq_cells     0
  set seq_dt_cells  0
  set test_cells    0
  set total_area    0

  # initialize other vars
  set hdt           ""
  set tc_atr        ""
  set xcell_area    0

  # create a collection of all cell objects
  set all_cells [get_cells -hierarchical *]

  foreach_in_collection cell $all_cells {
    incr total_cells

    set cell_name [get_attribute $cell full_name]
    set dt        [get_attribute $cell dont_touch]

    if { $dt == "true" } {
      set dt_atr "d"
      incr dt_cells
    } else {
      set dt_atr ""
    }

    set ref_name  [get_attribute $cell ref_name]
    set cell_area [get_attribute $cell area]

    if { $cell_area > 0 } { set xcell_area $cell_area
    } else                { set cell_area  0          }

    set t_cell    [get_attribute $cell is_a_test_cell]

    if { $t_cell == "true" } {
      set tc_atr "t"
      incr test_cells
    } else {
      set tc_atr ""
    }

    set hier      [get_attribute $cell is_hierarchical]
    set combo     [get_attribute $cell is_combinational]
    set seq       [get_attribute $cell is_sequential]

    if { $hier } {
      set attribute "h"
      incr hier_cells
      set hdt [concat $option $hier]

      if { $dt_atr == "d" } { incr hier_dt_cells }
    } elseif { $seq } {
        set attribute "n"
        incr seq_cells

      if { $dt_atr == "d" } { incr seq_dt_cells }
      set total_area [expr $total_area + $xcell_area]
    } elseif { $combo } {
        set attribute ""
        set total_area [expr $total_area + $xcell_area]
    } else {
        set attribute "b"
    }

    if { [string match -a* $option] } {
      echo [format "%-32s %-14s %5.2f %2s %1s %1s" $cell_name $ref_name $cell_area $attribute $dt_atr $tc_atr]
    } elseif { $hdt == "h true" } {
      echo [format "%-36s %-14s %2s" $cell_name $ref_name $attribute $dt_atr]
      set hdt ""
    }
  } ; # close foreach_in_collection

  echo "-----------------------------------------------------------------"
  echo [format "%10s Total Cells" $total_cells]
  echo [format "%10s Cells with dont_touch" $dt_cells]
  echo " "
  echo [format "%10s Hierarchical Cells" $hier_cells]
  echo [format "%10s Hierarchical Cells with dont_touch" $hier_dt_cells]
  echo " "
  echo [format "%10s Test Cells" $test_cells]
  echo " "
  echo [format "%10.2f Total Cell Area" $total_area]
  echo "-----------------------------------------------------------------"
  echo " "
}

define_proc_attributes rpt_cell \
  -info "Procedure to report all cells in the design" \
  -define_args {
    {-a "report every cell and the summary"}
    {-h "report only hierarchical cells and the summary"}
    {-t "report the summary only"}
  }


##-----------------------------------------------------------------------------------------------##

#####################################################################
# aa -- always ask for commands, variables or both
#
# usage : aa name [-help] [-printvar]

proc aa args {
  set name   [lindex $args 0]
  set option [lindex $args 1]
  if { [string match -h* $option] } {
    set option "-help"
    echo "********* Commands *********"
    echo " "
    help *${name}*
    echo " "
  } elseif { [string match -p* $option] } {
    set option "-printvar"
    echo "********* Variables *********"
    echo " "
    printvar *${name}*
    echo " "
  } elseif { ![string match -* $name] } {
    echo "********* Commands *********"
    echo " "
    help *${name}*
    echo " "
    echo "********* Variables *********"
    echo " "
    printvar *${name}*
    echo " "
  } else {
    echo " "
    echo "  Message: Option Required"
    echo "  Usage: aa name \[-help\] \[-printvar\] "
    echo " "
    return
  }
}

define_proc_attributes aa \
  -info "Procedure to report commands, variables or both in the design" \
  -define_args {
    {name "specifies the name of this variable"}
    {-h "report to find commands"}
    {-p "report to find variables"}
  }

##-----------------------------------------------------------------------------------------------##

#####################################################################
# &err
#
# usage : &err 

proc &err args {
  if { [info exists ::sh_enable_stdout_redirect] } {
    set sh_enable_stdout_redirect_save $::sh_enable_stdout_redirect
    set $::sh_enable_stdout_redirect false
  }

  set message [regsub -all {[\{\}]} $args {}]
  echo [format "Err%s" "or: $message (echo)"]
  puts stdout [format "Err%s" "or: $message (puts)"]

  if { [info exists ::sh_enable_stdout_redirect] } {
    redirect /dev/null {set ::sh_enable_stdout_redirect $sh_enable_stdout_redirect_save}
  }
}


##-----------------------------------------------------------------------------------------------##

#####################################################################
# &get_cells -- get_cells, independet of hierarchy
#
# usage: &get_cells hierarchical_path_to_cell
#

proc &get_cells { args } {

  parse_proc_arguments -args $args result_array

  set filtercells {}

  foreach cellpath $result_array(cellpaths) {
    set searchpattern [regsub -all {/} $cellpath {?}]

    if { [info exists result_array(-hierarchical)] } {
      set searchpattern "*?${searchpattern}"
    }

    # Tell the tool -quiet, and check the result so we can report
    # which pattern failed.
    set thispattern_filtercells [get_cells * -quiet -hier -filter "@full_name =~ $searchpattern"]

    if { ![info exists result_array(-quiet)] && [sizeof_collection $thispattern_filtercells] == 0 } {
      &err "Nothing matched for pattern $cellpath"
    }
    append_to_collection -unique filtercells $thispattern_filtercells
  }

  return $filtercells
}

#
# Define the arguments, command infommation and usage
#
define_proc_attributes &get_cells \
  -info "Does get_cells independent of hierarchy" \
  -define_args {
    {cellpaths "(Hierarchical) path to cell" cellpaths list required} \
    {-quiet "Don't complain if no match found" "" boolean optional} \
    {-hierarchical "Do the search hier'ly" "" boolean optional} \
  }




