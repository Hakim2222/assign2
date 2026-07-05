# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    andi:
    # Example:
    li   t0, 14                #t0 not equal with x0(permanent 0)
    li   t4,-800
    andi  t2, t0, 12           # your result in t2,it only true when 2 bit is same(bit wise)
    #let say 1110 and 1100= 1100 (in decimal is 10) it is not multiply

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
