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
extern void execute_7804(char*, char *);
extern void execute_32270(char*, char *);
extern void execute_7809(char*, char *);
extern void execute_7810(char*, char *);
extern void execute_7811(char*, char *);
extern void execute_7850(char*, char *);
extern void execute_7935(char*, char *);
extern void execute_7936(char*, char *);
extern void execute_32268(char*, char *);
extern void execute_32269(char*, char *);
extern void execute_7830(char*, char *);
extern void execute_7812(char*, char *);
extern void execute_7813(char*, char *);
extern void execute_7831(char*, char *);
extern void execute_7849(char*, char *);
extern void execute_7848(char*, char *);
extern void execute_7851(char*, char *);
extern void execute_7869(char*, char *);
extern void execute_7870(char*, char *);
extern void execute_7876(char*, char *);
extern void execute_7871(char*, char *);
extern void execute_7872(char*, char *);
extern void execute_7873(char*, char *);
extern void execute_7874(char*, char *);
extern void execute_7875(char*, char *);
extern void execute_7894(char*, char *);
extern void execute_7895(char*, char *);
extern void execute_7925(char*, char *);
extern void execute_7926(char*, char *);
extern void execute_7932(char*, char *);
extern void execute_7933(char*, char *);
extern void execute_7934(char*, char *);
extern void execute_7896(char*, char *);
extern void execute_7908(char*, char *);
extern void execute_7907(char*, char *);
extern void execute_7927(char*, char *);
extern void execute_7928(char*, char *);
extern void execute_7929(char*, char *);
extern void execute_7930(char*, char *);
extern void execute_7931(char*, char *);
extern void execute_7937(char*, char *);
extern void execute_7938(char*, char *);
extern void execute_7939(char*, char *);
extern void execute_7940(char*, char *);
extern void execute_7941(char*, char *);
extern void execute_7942(char*, char *);
extern void execute_7943(char*, char *);
extern void execute_7944(char*, char *);
extern void execute_7945(char*, char *);
extern void execute_7946(char*, char *);
extern void execute_7947(char*, char *);
extern void execute_7948(char*, char *);
extern void execute_7949(char*, char *);
extern void execute_7950(char*, char *);
extern void execute_7951(char*, char *);
extern void execute_7952(char*, char *);
extern void execute_7953(char*, char *);
extern void execute_7954(char*, char *);
extern void execute_7955(char*, char *);
extern void execute_7956(char*, char *);
extern void execute_7957(char*, char *);
extern void execute_7958(char*, char *);
extern void execute_7959(char*, char *);
extern void execute_7960(char*, char *);
extern void execute_9139(char*, char *);
extern void execute_8009(char*, char *);
extern void execute_9088(char*, char *);
extern void execute_9138(char*, char *);
extern void execute_9140(char*, char *);
extern void execute_9141(char*, char *);
extern void execute_9142(char*, char *);
extern void execute_9143(char*, char *);
extern void execute_9144(char*, char *);
extern void execute_9145(char*, char *);
extern void execute_9146(char*, char *);
extern void execute_9147(char*, char *);
extern void execute_9148(char*, char *);
extern void execute_9149(char*, char *);
extern void execute_9150(char*, char *);
extern void execute_9151(char*, char *);
extern void execute_32177(char*, char *);
extern void execute_32178(char*, char *);
extern void execute_32238(char*, char *);
extern void execute_32239(char*, char *);
extern void execute_32240(char*, char *);
extern void execute_32241(char*, char *);
extern void execute_32242(char*, char *);
extern void execute_32243(char*, char *);
extern void execute_32244(char*, char *);
extern void execute_32245(char*, char *);
extern void execute_32246(char*, char *);
extern void execute_32247(char*, char *);
extern void execute_32248(char*, char *);
extern void execute_32249(char*, char *);
extern void execute_32250(char*, char *);
extern void execute_32251(char*, char *);
extern void execute_32252(char*, char *);
extern void execute_32253(char*, char *);
extern void execute_32254(char*, char *);
extern void execute_32255(char*, char *);
extern void execute_32256(char*, char *);
extern void execute_32257(char*, char *);
extern void execute_32258(char*, char *);
extern void execute_32259(char*, char *);
extern void execute_32260(char*, char *);
extern void execute_32261(char*, char *);
extern void execute_32262(char*, char *);
extern void execute_32263(char*, char *);
extern void execute_32264(char*, char *);
extern void execute_32265(char*, char *);
extern void execute_32266(char*, char *);
extern void execute_32267(char*, char *);
extern void execute_9172(char*, char *);
extern void execute_9173(char*, char *);
extern void execute_9174(char*, char *);
extern void execute_9175(char*, char *);
extern void execute_9176(char*, char *);
extern void execute_9177(char*, char *);
extern void execute_12584(char*, char *);
extern void execute_12585(char*, char *);
extern void execute_16472(char*, char *);
extern void execute_16469(char*, char *);
extern void execute_16470(char*, char *);
extern void execute_16471(char*, char *);
extern void execute_13517(char*, char *);
extern void execute_13518(char*, char *);
extern void execute_13519(char*, char *);
extern void execute_12797(char*, char *);
extern void execute_12798(char*, char *);
extern void execute_12799(char*, char *);
extern void execute_12586(char*, char *);
extern void execute_12587(char*, char *);
extern void execute_12588(char*, char *);
extern void execute_12589(char*, char *);
extern void execute_12590(char*, char *);
extern void execute_12591(char*, char *);
extern void execute_12592(char*, char *);
extern void execute_12593(char*, char *);
extern void execute_12594(char*, char *);
extern void execute_12595(char*, char *);
extern void execute_12626(char*, char *);
extern void execute_12627(char*, char *);
extern void execute_12628(char*, char *);
extern void execute_12596(char*, char *);
extern void execute_12597(char*, char *);
extern void execute_12598(char*, char *);
extern void execute_12599(char*, char *);
extern void execute_12600(char*, char *);
extern void execute_12770(char*, char *);
extern void execute_13466(char*, char *);
extern void execute_32065(char*, char *);
extern void execute_32179(char*, char *);
extern void execute_32180(char*, char *);
extern void execute_32181(char*, char *);
extern void execute_32182(char*, char *);
extern void execute_32183(char*, char *);
extern void execute_32184(char*, char *);
extern void execute_32185(char*, char *);
extern void execute_7806(char*, char *);
extern void execute_7807(char*, char *);
extern void execute_7808(char*, char *);
extern void execute_32271(char*, char *);
extern void execute_32272(char*, char *);
extern void execute_32273(char*, char *);
extern void execute_32274(char*, char *);
extern void execute_32275(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_259(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_260(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_261(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_262(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_265(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_268(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[179] = {(funcp)execute_7804, (funcp)execute_32270, (funcp)execute_7809, (funcp)execute_7810, (funcp)execute_7811, (funcp)execute_7850, (funcp)execute_7935, (funcp)execute_7936, (funcp)execute_32268, (funcp)execute_32269, (funcp)execute_7830, (funcp)execute_7812, (funcp)execute_7813, (funcp)execute_7831, (funcp)execute_7849, (funcp)execute_7848, (funcp)execute_7851, (funcp)execute_7869, (funcp)execute_7870, (funcp)execute_7876, (funcp)execute_7871, (funcp)execute_7872, (funcp)execute_7873, (funcp)execute_7874, (funcp)execute_7875, (funcp)execute_7894, (funcp)execute_7895, (funcp)execute_7925, (funcp)execute_7926, (funcp)execute_7932, (funcp)execute_7933, (funcp)execute_7934, (funcp)execute_7896, (funcp)execute_7908, (funcp)execute_7907, (funcp)execute_7927, (funcp)execute_7928, (funcp)execute_7929, (funcp)execute_7930, (funcp)execute_7931, (funcp)execute_7937, (funcp)execute_7938, (funcp)execute_7939, (funcp)execute_7940, (funcp)execute_7941, (funcp)execute_7942, (funcp)execute_7943, (funcp)execute_7944, (funcp)execute_7945, (funcp)execute_7946, (funcp)execute_7947, (funcp)execute_7948, (funcp)execute_7949, (funcp)execute_7950, (funcp)execute_7951, (funcp)execute_7952, (funcp)execute_7953, (funcp)execute_7954, (funcp)execute_7955, (funcp)execute_7956, (funcp)execute_7957, (funcp)execute_7958, (funcp)execute_7959, (funcp)execute_7960, (funcp)execute_9139, (funcp)execute_8009, (funcp)execute_9088, (funcp)execute_9138, (funcp)execute_9140, (funcp)execute_9141, (funcp)execute_9142, (funcp)execute_9143, (funcp)execute_9144, (funcp)execute_9145, (funcp)execute_9146, (funcp)execute_9147, (funcp)execute_9148, (funcp)execute_9149, (funcp)execute_9150, (funcp)execute_9151, (funcp)execute_32177, (funcp)execute_32178, (funcp)execute_32238, (funcp)execute_32239, (funcp)execute_32240, (funcp)execute_32241, (funcp)execute_32242, (funcp)execute_32243, (funcp)execute_32244, (funcp)execute_32245, (funcp)execute_32246, (funcp)execute_32247, (funcp)execute_32248, (funcp)execute_32249, (funcp)execute_32250, (funcp)execute_32251, (funcp)execute_32252, (funcp)execute_32253, (funcp)execute_32254, (funcp)execute_32255, (funcp)execute_32256, (funcp)execute_32257, (funcp)execute_32258, (funcp)execute_32259, (funcp)execute_32260, (funcp)execute_32261, (funcp)execute_32262, (funcp)execute_32263, (funcp)execute_32264, (funcp)execute_32265, (funcp)execute_32266, (funcp)execute_32267, (funcp)execute_9172, (funcp)execute_9173, (funcp)execute_9174, (funcp)execute_9175, (funcp)execute_9176, (funcp)execute_9177, (funcp)execute_12584, (funcp)execute_12585, (funcp)execute_16472, (funcp)execute_16469, (funcp)execute_16470, (funcp)execute_16471, (funcp)execute_13517, (funcp)execute_13518, (funcp)execute_13519, (funcp)execute_12797, (funcp)execute_12798, (funcp)execute_12799, (funcp)execute_12586, (funcp)execute_12587, (funcp)execute_12588, (funcp)execute_12589, (funcp)execute_12590, (funcp)execute_12591, (funcp)execute_12592, (funcp)execute_12593, (funcp)execute_12594, (funcp)execute_12595, (funcp)execute_12626, (funcp)execute_12627, (funcp)execute_12628, (funcp)execute_12596, (funcp)execute_12597, (funcp)execute_12598, (funcp)execute_12599, (funcp)execute_12600, (funcp)execute_12770, (funcp)execute_13466, (funcp)execute_32065, (funcp)execute_32179, (funcp)execute_32180, (funcp)execute_32181, (funcp)execute_32182, (funcp)execute_32183, (funcp)execute_32184, (funcp)execute_32185, (funcp)execute_7806, (funcp)execute_7807, (funcp)execute_7808, (funcp)execute_32271, (funcp)execute_32272, (funcp)execute_32273, (funcp)execute_32274, (funcp)execute_32275, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_7, (funcp)transaction_11, (funcp)transaction_15, (funcp)transaction_50, (funcp)transaction_258, (funcp)transaction_259, (funcp)transaction_260, (funcp)transaction_261, (funcp)transaction_262, (funcp)transaction_265, (funcp)transaction_268, (funcp)transaction_271};
const int NumRelocateId= 179;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/fp2real_tb_behav/xsim.reloc",  (void **)funcTab, 179);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/fp2real_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/fp2real_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/fp2real_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/fp2real_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/fp2real_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
