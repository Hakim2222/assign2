# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    lw:
    #load word unsigned
    la   t0, heroin
    li   t4,4
    lwu  t2, 0(t0)            # your result in t2

    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, 0x00000000DEADBEEF              # TODO: set the value you expect
    bne  t2, t3, fail                         #it read only full word,remaining is 0

    # ---------------------------------------------------------------------

    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
# ---- Data Section -----------------------------------------
.data
heroin:
    .word 0xDEADBEEF            # Your test word in memory
    #EF offset 0
    #BE offset 1
    #AD offset 2
    #DE offset 3

RVTEST_DATA_END
