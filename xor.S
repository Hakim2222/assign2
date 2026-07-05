# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    xor:
    # Example:
    li   t0, 10                #t0 not equal with x0(permanent 0)
    li   t4, 6
    xor  t2, t0, t4           # your result in t2,use xor operations
    #let say 1010(10) xor 0110(10) so it is 1100  bcs xor only 1 when dif bit

    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, 12                # TODO: set the value you expect(1100 in binary)
    bne  t2, t3, fail
    # ---------------------------------------------------------------------

    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
RVTEST_DATA_END
