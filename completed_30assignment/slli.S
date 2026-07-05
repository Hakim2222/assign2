# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    #SLLI is a logical left shift (zeros are shifted into the lower bits)
    # Example:
    li   t0, 12                #t0 not equal with x0(permanent 0)
    li   t4,-2
    slli  t2,t0,2           # your result in t2,
    #let say 1100(12) it shift to the left by imm by 2 (so it become 110000 which is 48 decimal)

    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, 48                # TODO: set the value you expect(1100< in binary)
    bne  t2, t3, fail
    # ---------------------------------------------------------------------

    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
RVTEST_DATA_END
