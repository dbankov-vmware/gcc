/*
<<<<<<< HEAD
REQUIRED_ARGS:
=======
EXTRA_FILES: imports/dip22d.d imports/dip22e.d
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
TEST_OUTPUT:
---
fail_compilation/dip22e.d(14): Error: undefined identifier `foo`, did you mean struct `Foo`?
---
*/

import imports.dip22d;
import imports.dip22e;

void test()
{
    foo();
    bar(12);
}
