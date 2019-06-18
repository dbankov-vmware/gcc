/*
EXTRA_FILES: imports/fail347a.d
TEST_OUTPUT:
---
<<<<<<< HEAD
fail_compilation/fail347.d(21): Error: undefined identifier `bbr`, did you mean variable `bar`?
fail_compilation/fail347.d(22): Error: no property 'ofo' for type 'S', did you mean 'fail347.S.foo'?
fail_compilation/fail347.d(23): Error: undefined identifier `strlenx`, did you mean function `strlen`?
=======
fail_compilation/fail347.d(22): Error: undefined identifier `bbr`, did you mean variable `bar`?
fail_compilation/fail347.d(23): Error: no property `ofo` for type `S`, did you mean `fail347.S.foo`?
fail_compilation/fail347.d(24): Error: undefined identifier `strlenx`, did you mean function `strlen`?
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/

//import core.stdc.string;
import imports.fail347a;

struct S
{
    int foo;
}

void main()
{
    S bar;
    bbr.foo = 3;
    bar.ofo = 4;
    auto s = strlenx("hello");
}
