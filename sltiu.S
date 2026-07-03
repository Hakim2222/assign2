# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    sltiu:
    # Example: compute 3 + 4. Replace with your own instructions.
    li   t0, 100                 #t0 not equal with x0(permanent 0)
    li   t4,50
    sltiu  t2, t4, -1            # your result in t2,expect rs1 is set when met requirement,it is unsigned number
                                 #-1 is consider 0xffffffffffff1,when unsigned commands is used,obviously it fail as imm>rs1

    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, 1                # TODO: set the value you expect
    bne  t2, t3, fail
    # ---------------------------------------------------------------------

    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
RVTEST_DATA_END
