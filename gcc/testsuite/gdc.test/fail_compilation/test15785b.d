<<<<<<< HEAD
// REQUIRED_ARGS:
// PERMUTE_ARGS:
/*
TEST_OUTPUT:
---
fail_compilation/test15785b.d(15): Error: `imports.test15785.Base.T` is not visible from module `test15785b`
fail_compilation/test15785b.d(16): Error: `imports.test15785.Base.T` is not visible from module `test15785b`
fail_compilation/test15785b.d(17): Error: `imports.test15785.IBase2.T` is not visible from module `test15785b`
=======
// EXTRA_FILES: imports/test15785.d
/*
TEST_OUTPUT:
---
fail_compilation/test15785b.d(14): Error: `imports.test15785.Base.T` is not visible from module `test15785b`
fail_compilation/test15785b.d(15): Error: `imports.test15785.Base.T` is not visible from module `test15785b`
fail_compilation/test15785b.d(16): Error: `imports.test15785.IBase2.T` is not visible from module `test15785b`
>>>>>>> 0b935ce9fab... Import dmd v2.093.0: dmd 021d1a0c6, druntime 54197db1, phobos 76caec12f
---
*/
import imports.test15785;

class Derived : Base, IBase2
{
    typeof(super).T t;
    Base.T t2;
    IBase2.T t3;
}
