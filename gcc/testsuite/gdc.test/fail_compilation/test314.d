/*
<<<<<<< HEAD
REQUIRED_ARGS:
=======
EXTRA_FILES: imports/a314.d imports/b314.d imports/c314.d
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
TEST_OUTPUT:
---
fail_compilation/test314.d(19): Error: undefined identifier `renamed`
fail_compilation/test314.d(20): Error: undefined identifier `bug`
fail_compilation/test314.d(22): Error: undefined identifier `renamedpkg`
fail_compilation/test314.d(23): Error: undefined identifier `bugpkg`
---
*/

module test314;

import imports.a314;
import imports.b314;

void main()
{
    renamed.bug("This should not work.\n");
    bug("This should not work.\n");

    renamedpkg.bug("This should not work.\n");
    bugpkg("This should not work.\n");
}
