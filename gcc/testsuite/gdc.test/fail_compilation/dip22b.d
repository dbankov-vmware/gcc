/*
<<<<<<< HEAD
REQUIRED_ARGS:
=======
EXTRA_FILES: imports/dip22b.d imports/dip22c.d
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
TEST_OUTPUT:
---
fail_compilation/dip22b.d(12): Error: undefined identifier `Foo`, did you mean variable `foo`?
---
*/
module pkg.dip22;

import imports.dip22b;

Foo foo;
