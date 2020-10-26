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

#if defined(_WIN32)
 #include "stdio.h"
#endif
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

#if defined(_WIN32)
 #include "stdio.h"
#endif
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
extern void execute_790(char*, char *);
extern void execute_5115(char*, char *);
extern void execute_5116(char*, char *);
extern void execute_795(char*, char *);
extern void execute_796(char*, char *);
extern void execute_797(char*, char *);
extern void execute_798(char*, char *);
extern void execute_799(char*, char *);
extern void execute_800(char*, char *);
extern void execute_801(char*, char *);
extern void execute_5007(char*, char *);
extern void execute_5113(char*, char *);
extern void execute_5114(char*, char *);
extern void execute_802(char*, char *);
extern void execute_803(char*, char *);
extern void execute_820(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_804(char*, char *);
extern void execute_805(char*, char *);
extern void execute_806(char*, char *);
extern void execute_807(char*, char *);
extern void execute_808(char*, char *);
extern void execute_809(char*, char *);
extern void execute_816(char*, char *);
extern void execute_817(char*, char *);
extern void execute_818(char*, char *);
extern void execute_819(char*, char *);
extern void execute_5004(char*, char *);
extern void execute_5005(char*, char *);
extern void execute_5006(char*, char *);
extern void execute_1839(char*, char *);
extern void execute_1840(char*, char *);
extern void execute_1841(char*, char *);
extern void execute_1068(char*, char *);
extern void execute_1069(char*, char *);
extern void execute_1070(char*, char *);
extern void execute_842(char*, char *);
extern void execute_843(char*, char *);
extern void execute_844(char*, char *);
extern void execute_845(char*, char *);
extern void execute_846(char*, char *);
extern void execute_847(char*, char *);
extern void execute_848(char*, char *);
extern void execute_849(char*, char *);
extern void execute_850(char*, char *);
extern void execute_851(char*, char *);
extern void execute_882(char*, char *);
extern void execute_883(char*, char *);
extern void execute_884(char*, char *);
extern void execute_852(char*, char *);
extern void execute_853(char*, char *);
extern void execute_854(char*, char *);
extern void execute_855(char*, char *);
extern void execute_856(char*, char *);
extern void execute_1014(char*, char *);
extern void execute_1015(char*, char *);
extern void execute_1030(char*, char *);
extern void execute_1758(char*, char *);
extern void execute_1759(char*, char *);
extern void execute_1783(char*, char *);
extern void execute_1778(char*, char *);
extern void execute_1779(char*, char *);
extern void execute_1780(char*, char *);
extern void execute_1781(char*, char *);
extern void execute_1782(char*, char *);
extern void execute_4842(char*, char *);
extern void execute_4843(char*, char *);
extern void execute_4894(char*, char *);
extern void execute_5019(char*, char *);
extern void execute_5097(char*, char *);
extern void execute_5098(char*, char *);
extern void execute_5099(char*, char *);
extern void execute_5100(char*, char *);
extern void execute_5101(char*, char *);
extern void execute_5102(char*, char *);
extern void execute_5008(char*, char *);
extern void execute_5009(char*, char *);
extern void execute_5010(char*, char *);
extern void execute_5011(char*, char *);
extern void execute_5012(char*, char *);
extern void execute_5013(char*, char *);
extern void execute_5014(char*, char *);
extern void execute_5015(char*, char *);
extern void execute_5016(char*, char *);
extern void execute_5017(char*, char *);
extern void execute_5018(char*, char *);
extern void execute_5020(char*, char *);
extern void execute_5046(char*, char *);
extern void execute_5021(char*, char *);
extern void execute_5022(char*, char *);
extern void execute_5044(char*, char *);
extern void execute_789(char*, char *);
extern void execute_5103(char*, char *);
extern void execute_5104(char*, char *);
extern void execute_5105(char*, char *);
extern void execute_5106(char*, char *);
extern void execute_5107(char*, char *);
extern void execute_792(char*, char *);
extern void execute_793(char*, char *);
extern void execute_794(char*, char *);
extern void execute_5117(char*, char *);
extern void execute_5118(char*, char *);
extern void execute_5119(char*, char *);
extern void execute_5120(char*, char *);
extern void execute_5121(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_8(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[115] = {(funcp)execute_790, (funcp)execute_5115, (funcp)execute_5116, (funcp)execute_795, (funcp)execute_796, (funcp)execute_797, (funcp)execute_798, (funcp)execute_799, (funcp)execute_800, (funcp)execute_801, (funcp)execute_5007, (funcp)execute_5113, (funcp)execute_5114, (funcp)execute_802, (funcp)execute_803, (funcp)execute_820, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_804, (funcp)execute_805, (funcp)execute_806, (funcp)execute_807, (funcp)execute_808, (funcp)execute_809, (funcp)execute_816, (funcp)execute_817, (funcp)execute_818, (funcp)execute_819, (funcp)execute_5004, (funcp)execute_5005, (funcp)execute_5006, (funcp)execute_1839, (funcp)execute_1840, (funcp)execute_1841, (funcp)execute_1068, (funcp)execute_1069, (funcp)execute_1070, (funcp)execute_842, (funcp)execute_843, (funcp)execute_844, (funcp)execute_845, (funcp)execute_846, (funcp)execute_847, (funcp)execute_848, (funcp)execute_849, (funcp)execute_850, (funcp)execute_851, (funcp)execute_882, (funcp)execute_883, (funcp)execute_884, (funcp)execute_852, (funcp)execute_853, (funcp)execute_854, (funcp)execute_855, (funcp)execute_856, (funcp)execute_1014, (funcp)execute_1015, (funcp)execute_1030, (funcp)execute_1758, (funcp)execute_1759, (funcp)execute_1783, (funcp)execute_1778, (funcp)execute_1779, (funcp)execute_1780, (funcp)execute_1781, (funcp)execute_1782, (funcp)execute_4842, (funcp)execute_4843, (funcp)execute_4894, (funcp)execute_5019, (funcp)execute_5097, (funcp)execute_5098, (funcp)execute_5099, (funcp)execute_5100, (funcp)execute_5101, (funcp)execute_5102, (funcp)execute_5008, (funcp)execute_5009, (funcp)execute_5010, (funcp)execute_5011, (funcp)execute_5012, (funcp)execute_5013, (funcp)execute_5014, (funcp)execute_5015, (funcp)execute_5016, (funcp)execute_5017, (funcp)execute_5018, (funcp)execute_5020, (funcp)execute_5046, (funcp)execute_5021, (funcp)execute_5022, (funcp)execute_5044, (funcp)execute_789, (funcp)execute_5103, (funcp)execute_5104, (funcp)execute_5105, (funcp)execute_5106, (funcp)execute_5107, (funcp)execute_792, (funcp)execute_793, (funcp)execute_794, (funcp)execute_5117, (funcp)execute_5118, (funcp)execute_5119, (funcp)execute_5120, (funcp)execute_5121, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_7, (funcp)transaction_8, (funcp)transaction_9, (funcp)transaction_10, (funcp)transaction_11, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_15};
const int NumRelocateId= 115;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/multiplier_tb_behav/xsim.reloc",  (void **)funcTab, 115);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/multiplier_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/multiplier_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/multiplier_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/multiplier_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/multiplier_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
