/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_16(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_87(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_91(char*, char *);
extern void execute_35(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void execute_19(char*, char *);
extern void execute_38(char*, char *);
extern void execute_23(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_28(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_1(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_2(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_3(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_4(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_5(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_6(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_7(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_8(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_9(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_10(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_11(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_12(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_13(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_14(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_15(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_16(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_17(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_18(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_19(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_20(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_21(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_22(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_23(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_24(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_25(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_26(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_27(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_28(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_29(char*, char *);
extern void timing_checker_condition_m_a96e1bf7_67151b0a_30(char*, char *);
extern void execute_76(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[99] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_31, (funcp)execute_32, (funcp)execute_16, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_87, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_35, (funcp)vlog_timingcheck_execute_0, (funcp)execute_19, (funcp)execute_38, (funcp)execute_23, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_28, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_1, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_2, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_3, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_4, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_5, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_6, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_7, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_8, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_9, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_10, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_11, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_12, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_13, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_14, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_15, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_16, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_17, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_18, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_19, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_20, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_21, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_22, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_23, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_24, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_25, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_26, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_27, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_28, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_29, (funcp)timing_checker_condition_m_a96e1bf7_67151b0a_30, (funcp)execute_76, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_61};
const int NumRelocateId= 99;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_D_FLIPFLOP_time_impl/xsim.reloc",  (void **)funcTab, 99);
	iki_vhdl_file_variable_register(dp + 17960);
	iki_vhdl_file_variable_register(dp + 18016);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_D_FLIPFLOP_time_impl/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_D_FLIPFLOP_time_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 23112, dp + 23696, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 23056, dp + 23864, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 23168, dp + 24088, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_D_FLIPFLOP_time_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_D_FLIPFLOP_time_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_D_FLIPFLOP_time_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
