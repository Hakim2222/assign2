# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    sw:
    #store word ,
    la   t1, heroin
    li  t2, 0xDEADBEEF
    sw  t2, 0(t1)            # your result in t2
    lw  t2,0(t1)             #it means that the register successfully stored the data in memory
                    #by loading back the memory into t2,we compare it to see successfull or not
    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, 0xFFFFFFFFDEADBEEF               # TODO: set the value you expect(bcs D is negative sign,all F)
    bne  t2, t3, fail
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
