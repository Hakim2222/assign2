# Day 9, Assignment 2: write your own RISC-V assembly.
# Edit the area marked below, then run ./run.sh to build + run it on Spike.
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

    # ---- your code here -------------------------------------------------
    #use add
    LI:
    # Example:
    li   x0, 4
    addi  x5, x0,-2048             # your result in t2

    # ---- self-check: PASS if t2 == expected -----------------------------
    li   t3, -2048                 # TODO: set the value you expect
    bne  x5, t3, fail
    # ---------------------------------------------------------------------

    RVTEST_PASS                  # exit 0
fail:
    RVTEST_FAIL                  # exit non-zero

RVTEST_CODE_END

RVTEST_DATA_BEGIN
RVTEST_DATA_END

#Q1 the ABI of x10 is a0,it used to pass the first argument and return the value
#Q2 X0 is hardwared to zero,whatever value comes in is 0
#it is single instruction,because 1000 value is within 12bit
#q4 in isa,immediate commands use 12 bits ,so 2^12 is 4096,but it has signed number,so the range is divide by 2,then -2048 to 2047