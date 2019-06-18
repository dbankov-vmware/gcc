// REQUIRED_ARGS: -de
// https://issues.dlang.org/show_bug.cgi?id=143
// EXTRA_FILES: imports/test143.d
/*
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/test143.d(19): Error: undefined identifier `x`
=======
fail_compilation/test143.d(20): Error: undefined identifier `x`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/
module test143;

import imports.test143;

void bar(int)
{
}

void foo()
{
    bar(x);
}
