# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    #SRAI is an arithmetic right shift
    # Example:
    li   t0, -12                #t0 not equal with x0(permanent 0)
    li   t4,12
    srai  t2,t0,2       # your result in t2, Shift right arithmetically by 2 spaces
                        #let say 1100(12) it shift to the right by imm by 2 (so it become 1111,(11) which is -4 decimal)
    srai  t6,t4,2
                        # your result in t5, Shift right arithmetically by 2 spaces
                        #let say 1010(10) it shift to the right by imm by 2 (so it become 10 which is 3 decimal)

    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, -3                # TODO: set the value you expect(11 in binary)
    bne  t2, t3, fail
    # ---------------------------------------------------------------------
    # ---- self-check: PASS if t5 == expected -----------------------------
    li   t5, 3                # TODO: set the value you expect(11 in binary)
    bne  t6, t5, fail
    # ---------------------------------------------------------------------
    #careful naming ,it will error ,
    #for calculation of it,use result = original number/2^N


    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
RVTEST_DATA_END
