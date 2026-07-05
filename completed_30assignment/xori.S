# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    xori:
    # Example:
    li   t0, 10                #t0 not equal with x0(permanent 0)
    li   t4,-2
    xori  t2, t0, 12           # your result in t2,use xor operations
    #let say 1100(12) xor 1010(10) so it is 0110  bcs xor only when dif bit

    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, 6                # TODO: set the value you expect(1100 in binary)
    bne  t2, t3, fail
    # ---------------------------------------------------------------------

    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
RVTEST_DATA_END
