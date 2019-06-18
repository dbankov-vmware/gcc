/*
REQUIRED_ARGS: -de
EXTRA_FILES: imports/checkimports3a.d imports/checkimports3b.d imports/checkimports3c.d
<<<<<<< HEAD
=======
TEST_OUTPUT:
---
---
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
*/
import imports.checkimports3a;
import imports.checkimports3b;
import imports.checkimports3c;

void test()
{
    foo();
}
