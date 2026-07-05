# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    Add:
    # Example:
    li   t0, 3
    li   t4,4
    sub  t2, t0, t4             # your result in t2,it means t0-t4=-1

    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, -1                # TODO: set the value you expect
    bne  t2, t3, fail
    # ---------------------------------------------------------------------

    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
RVTEST_DATA_END
