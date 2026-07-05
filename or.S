# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    or:
    # Example:
    li   t0, 14                #t0 not equal with x0(permanent 0)
    li   t4, 12
    or  t2, t0, t4           # your result in t2,use ori it means 14 or 12 in bitwise
    #so it is 1110(14 decimal) or operation 1100(12) = 1111


    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, 14                # TODO: set the value you expect(1110 in binary)
    bne  t2, t3, fail
    # ---------------------------------------------------------------------

    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
RVTEST_DATA_END
